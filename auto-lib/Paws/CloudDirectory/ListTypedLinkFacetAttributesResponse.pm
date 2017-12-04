
package Paws::CloudDirectory::ListTypedLinkFacetAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::TypedLinkAttributeDefinition]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListTypedLinkFacetAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::CloudDirectory::TypedLinkAttributeDefinition>]

An ordered set of attributes associate with the typed link.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

