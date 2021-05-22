
package Paws::StorageGateway::ListTapePoolsOutput;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has PoolInfos => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::PoolInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListTapePoolsOutput

=head1 ATTRIBUTES


=head2 Marker => Str

A string that indicates the position at which to begin the returned
list of tape pools. Use the marker in your next request to continue
pagination of tape pools. If there are no more tape pools to list, this
element does not appear in the response body.


=head2 PoolInfos => ArrayRef[L<Paws::StorageGateway::PoolInfo>]

An array of C<PoolInfo> objects, where each object describes a single
custom tape pool. If there are no custom tape pools, the C<PoolInfos>
is an empty array.


=head2 _request_id => Str


=cut

1;