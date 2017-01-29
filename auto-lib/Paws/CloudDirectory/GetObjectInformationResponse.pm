
package Paws::CloudDirectory::GetObjectInformationResponse;
  use Moose;
  has ObjectIdentifier => (is => 'ro', isa => 'Str');
  has SchemaFacets => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::SchemaFacet]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetObjectInformationResponse

=head1 ATTRIBUTES


=head2 ObjectIdentifier => Str

The ObjectIdentifier of the specified object.


=head2 SchemaFacets => ArrayRef[L<Paws::CloudDirectory::SchemaFacet>]

The facets attached to the specified object.


=head2 _request_id => Str


=cut

