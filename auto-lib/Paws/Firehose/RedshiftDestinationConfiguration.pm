package Paws::Firehose::RedshiftDestinationConfiguration;
  use Moose;
  has ClusterJDBCURL => (is => 'ro', isa => 'Str', required => 1);
  has CopyCommand => (is => 'ro', isa => 'Paws::Firehose::CopyCommand', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
  has S3Configuration => (is => 'ro', isa => 'Paws::Firehose::S3DestinationConfiguration', required => 1);
  has Username => (is => 'ro', isa => 'Str', required => 1);
1;
