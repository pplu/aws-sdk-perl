
package Paws::Kinesis::UpdateShardCountOutput;
  use Moose;
  has CurrentShardCount => (is => 'ro', isa => 'Int');
  has StreamName => (is => 'ro', isa => 'Str');
  has TargetShardCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::UpdateShardCountOutput

=head1 ATTRIBUTES


=head2 CurrentShardCount => Int

The current number of shards.


=head2 StreamName => Str

The name of the stream.


=head2 TargetShardCount => Int

The updated number of shards.


=head2 _request_id => Str


=cut

1;