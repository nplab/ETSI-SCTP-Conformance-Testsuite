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
	@testFilesSorted = sort {return ${$a}{'fileName'} cmp ${$b}{'fileName'};} (@testFiles);
	return @testFilesSorted;
}

sub executeTestScript {
	my ($scriptPath) = @_;
	my $command = "packetdrill " . $scriptPath;
	if (system($command) == 0) {
		println "OK";
	}
}

my $dirWithTests= ".";

if (defined $ARGV[0]) {
	$dirWithTests = $ARGV[0];
}

my @testFiles = getTestFilesFromDir($dirWithTests);

foreach my $testScriptRef (@testFiles) {
	my %testScript = %{$testScriptRef};
	println " --- " . $testScript{'fileName'} . " ---";
	executeTestScript($testScript{'absolutePath'});
}
