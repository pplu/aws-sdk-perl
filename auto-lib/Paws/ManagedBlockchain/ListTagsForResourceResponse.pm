
package Paws::ManagedBlockchain::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ManagedBlockchain::OutputTagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::ManagedBlockchain::OutputTagMap>

The tags assigned to the resource.


=head2 _request_id => Str


=cut

