
package Paws::CloudDirectory::GetFacetResponse;
  use Moose;
  has Facet => (is => 'ro', isa => 'Paws::CloudDirectory::Facet');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetFacetResponse

=head1 ATTRIBUTES


=head2 Facet => L<Paws::CloudDirectory::Facet>

The Facet structure that is associated with the facet.


=head2 _request_id => Str


=cut

