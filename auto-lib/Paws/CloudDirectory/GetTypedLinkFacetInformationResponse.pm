
package Paws::CloudDirectory::GetTypedLinkFacetInformationResponse;
  use Moose;
  has IdentityAttributeOrder => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetTypedLinkFacetInformationResponse

=head1 ATTRIBUTES


=head2 IdentityAttributeOrder => ArrayRef[Str|Undef]

The order of identity attributes for the facet, from most significant
to least significant. The ability to filter typed links considers the
order that the attributes are defined on the typed link facet. When
providing ranges to typed link selection, any inexact ranges must be
specified at the end. Any attributes that do not have a range specified
are presumed to match the entire range. Filters are interpreted in the
order of the attributes on the typed link facet, not the order in which
they are supplied to any API calls. For more information about identity
attributes, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 _request_id => Str


=cut

