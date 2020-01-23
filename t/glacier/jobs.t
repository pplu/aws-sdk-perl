#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use English qw(-no-match-vars);
use Carp;
use Test::More;
use URI::Escape;
use Digest::SHA 'sha256_hex';

use Paws;
use Paws::Net::MockCaller;

my $paws = Paws->new(config => {
  caller => Paws::Net::MockCaller->new(
    mock_dir => 't/glacier/jobs',
    mock_mode => 'RECORD',
  ),
#  credentials => 'Test::CustomCredentials'
});

my $glacier = $paws->service('Glacier', region => 'us-west-2');

## We may need to upload an Archive to test this?

# my $archive = $glacier->UploadArchive(
#     AccountId => '-',
#     ArchiveDescription => 'Just a Test',
#     VaultName => 'testvault',
#     Body => 'X' x 1048576,
#     Checksum => sha256_hex('X' x 1048576),
# );

# my $archiveid = $archive->ArchiveId;
# diag($archiveid);
my $archiveid = 'QFr2GMkmVvi4ZUD02PRHFPMcOCtQQwFh-bq6oAiGEnC5MdSQadSJPXs6bw3Ik3CIPjPbS-FZKW2xXBowUYv_V2i4hbrQ7L8t0rl2LGwvB36ArZxateetDSrkCagioUHRRCa2seWLfw';

my $init_job_output = $glacier->InitiateJob(
  AccountId => '-',
  JobParameters => {
    ArchiveId => $archiveid,
    Description => 'My new job',
    Type => 'archive-retrieval'
  },
  VaultName => 'testvault',
 );

ok($init_job_output->JobId, 'New job has an Id');

my $job_list = $glacier->ListJobs(
  AccountId => '-',
  VaultName => 'testvault',
    );

ok( (grep { $_->JobId eq $init_job_output->JobId } (@{ $job_list->JobList })), 'Found JobId in JobList');

my ($finished_job) = grep { $_->Completed } (@{ $job_list->JobList });
ok( $finished_job, 'Found Completed Job in JobList');

my $job_desc = $glacier->DescribeJob(
  AccountId => '-',
  VaultName => 'testvault',
  JobId => $finished_job->JobId,
);

is($job_desc->ArchiveId, $archiveid, 'Got correct Job');
ok($job_desc->Completed, 'Job is finished');

my $result = $glacier->GetJobOutput(
  AccountId => '-',
  VaultName => 'testvault',
  JobId => $finished_job->JobId,
);

is($result->Body, 'X' x 1048576, 'Retrieved Archive body');
is($result->Checksum, sha256_hex('X' x 1048576), 'Checksum matches');
   
# Path only for select type jobs
# ok($init_job_output->JobOutputPath, 'New job has a path');

done_testing;


