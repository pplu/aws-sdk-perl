package Paws::Firehose::RedshiftDestinationDescription;
  use Moose;
  has ClusterJDBCURL => (is => 'ro', isa => 'Str', required => 1);
  has CopyCommand => (is => 'ro', isa => 'Paws::Firehose::CopyCommand', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
  has S3DestinationDescription => (is => 'ro', isa => 'Paws::Firehose::S3DestinationDescription', required => 1);
  has Username => (is => 'ro', isa => 'Str', required => 1);
1;
