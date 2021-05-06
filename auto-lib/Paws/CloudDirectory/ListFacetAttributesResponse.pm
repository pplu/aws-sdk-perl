
package Paws::CloudDirectory::ListFacetAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::FacetAttribute]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListFacetAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::CloudDirectory::FacetAttribute>]

The attributes attached to the facet.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

