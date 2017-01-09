
package Paws::Kinesis::DescribeLimitsOutput;
  use Moose;
  has OpenShardCount => (is => 'ro', isa => 'Int', required => 1);
  has ShardLimit => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DescribeLimitsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> OpenShardCount => Int

The number of open shards.


=head2 B<REQUIRED> ShardLimit => Int

The maximum number of shards.


=head2 _request_id => Str


=cut

1;