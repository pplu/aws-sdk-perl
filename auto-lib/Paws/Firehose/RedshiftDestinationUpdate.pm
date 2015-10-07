package Paws::Firehose::RedshiftDestinationUpdate;
  use Moose;
  has ClusterJDBCURL => (is => 'ro', isa => 'Str');
  has CopyCommand => (is => 'ro', isa => 'Paws::Firehose::CopyCommand');
  has Password => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');
  has S3Update => (is => 'ro', isa => 'Paws::Firehose::S3DestinationUpdate');
  has Username => (is => 'ro', isa => 'Str');
1;
