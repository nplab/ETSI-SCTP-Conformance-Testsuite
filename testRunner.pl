#!/usr/bin/perl
use strict;
use warnings;

use File::Find;

sub println {
	my ($string) = @_;
	print "$string\n";
}

sub isTestscript {
	my ($fileName) = @_;
	return $fileName =~  m|(.*)\.pkt|;
}

sub getTestFilesFromDir {
	my ($dirWithTests) = @_;
	my @testFiles = ();

	my $findCallback = sub {
		my $fileName = $_;
		if (isTestscript($fileName)) {
			my %testScript = ();
			$testScript{'fileName'} = $fileName;
			$testScript{'absolutePath'} = File::Spec->rel2abs($fileName);
			push(@testFiles, \%testScript);
		}
	};

	find($findCallback, $dirWithTests);
	my @testFilesSorted = sort {return ${$a}{'fileName'} cmp ${$b}{'fileName'};} (@testFiles);
	return @testFilesSorted;
}

sub executeTestScript {
	my ($scriptPath) = @_;
	my $command = "packetdrill " . $scriptPath;
	my $ret = system($command);

	return $ret;
}

sub executeTestFiles {
	my (@testFiles) = @_;
	my @passed = ();
	my @failed = ();

	foreach my $testScriptRef (@testFiles) {
		my %testScript = %{$testScriptRef};
		println " --- " . $testScript{'fileName'} . " ---";
		my $returnCode = executeTestScript($testScript{'absolutePath'});
		if ($returnCode == 0) {
			push(@passed, $testScript{'fileName'});
			println "OK";
		}
		else {
			push(@failed, $testScript{'fileName'});
			println "Failure";
		}
	}
	return (\@passed, \@failed);
}

sub printTestReport {
	my ($passedTestsRef, $failedTestsRef) = @_;
	my @passedTests = @{$passedTestsRef};
	my @failedTests = @{$failedTestsRef};

	println "--- Overview of executed test files ---";
	println "FAILED TESTS:";

	foreach my $failedTest (@failedTests) {
		println " - $failedTest";
	} 

	println "PASSED TESTS:";

	foreach my $passedTest (@passedTests) {
		println " - $passedTest";
	} 
}

my $dirWithTests= ".";

if (defined $ARGV[0]) {
	$dirWithTests = $ARGV[0];
}

my @testFiles = getTestFilesFromDir($dirWithTests);

my ($passedTestsRef, $failedTestsRef) = executeTestFiles(@testFiles);

print "\n------------------------------\n";

printTestReport($passedTestsRef, $failedTestsRef);
