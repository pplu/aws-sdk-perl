
package Paws::DynamoDB::DescribeKinesisStreamingDestinationOutput;
  use Moose;
  has KinesisDataStreamDestinations => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::KinesisDataStreamDestination]');
  has TableName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeKinesisStreamingDestinationOutput

=head1 ATTRIBUTES


=head2 KinesisDataStreamDestinations => ArrayRef[L<Paws::DynamoDB::KinesisDataStreamDestination>]

The list of replica structures for the table being described.


=head2 TableName => Str

The name of the table being described.


=head2 _request_id => Str


=cut

1;