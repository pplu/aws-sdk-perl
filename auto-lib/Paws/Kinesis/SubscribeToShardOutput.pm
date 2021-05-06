
package Paws::Kinesis::SubscribeToShardOutput;
  use Moose;
  has EventStream => (is => 'ro', isa => 'Paws::Kinesis::SubscribeToShardEventStream', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::SubscribeToShardOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventStream => L<Paws::Kinesis::SubscribeToShardEventStream>

The event stream that your consumer can use to read records from the
shard.


=head2 _request_id => Str


=cut

1;