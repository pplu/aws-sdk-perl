package Paws::Firehose::DestinationDescription;
  use Moose;
  has DestinationId => (is => 'ro', isa => 'Str', required => 1);
  has RedshiftDestinationDescription => (is => 'ro', isa => 'Paws::Firehose::RedshiftDestinationDescription');
  has S3DestinationDescription => (is => 'ro', isa => 'Paws::Firehose::S3DestinationDescription');
1;
