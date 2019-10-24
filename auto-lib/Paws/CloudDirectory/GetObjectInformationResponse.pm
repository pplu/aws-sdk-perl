
package Paws::CloudDirectory::GetObjectInformationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_SchemaFacet/;
  has ObjectIdentifier => (is => 'ro', isa => Str);
  has SchemaFacets => (is => 'ro', isa => ArrayRef[CloudDirectory_SchemaFacet]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SchemaFacets' => {
                                   'class' => 'Paws::CloudDirectory::SchemaFacet',
                                   'type' => 'ArrayRef[CloudDirectory_SchemaFacet]'
                                 },
               'ObjectIdentifier' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetObjectInformationResponse

=head1 ATTRIBUTES


=head2 ObjectIdentifier => Str

The C<ObjectIdentifier> of the specified object.


=head2 SchemaFacets => ArrayRef[CloudDirectory_SchemaFacet]

The facets attached to the specified object. Although the response does
not include minor version information, the most recently applied minor
version of each Facet is in effect. See GetAppliedSchemaVersion for
details.


=head2 _request_id => Str


=cut

