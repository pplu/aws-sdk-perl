
package Paws::CloudDirectory::ListTypedLinkFacetNamesResponse;
  use Moose;
  has FacetNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListTypedLinkFacetNamesResponse

=head1 ATTRIBUTES


=head2 FacetNames => ArrayRef[Str|Undef]

The names of typed link facets that exist within the schema.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

