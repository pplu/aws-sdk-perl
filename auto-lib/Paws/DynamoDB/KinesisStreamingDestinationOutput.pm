
package Paws::DynamoDB::KinesisStreamingDestinationOutput;
  use Moose;
  has DestinationStatus => (is => 'ro', isa => 'Str');
  has StreamArn => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::KinesisStreamingDestinationOutput

=head1 ATTRIBUTES


=head2 DestinationStatus => Str

The current status of the replication.

Valid values are: C<"ENABLING">, C<"ACTIVE">, C<"DISABLING">, C<"DISABLED">, C<"ENABLE_FAILED">
=head2 StreamArn => Str

The ARN for the specific Kinesis data stream.


=head2 TableName => Str

The name of the table being modified.


=head2 _request_id => Str


=cut

1;