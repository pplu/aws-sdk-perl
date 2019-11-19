
package Paws::CloudDirectory::ListFacetAttributesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_FacetAttribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[CloudDirectory_FacetAttribute]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'type' => 'ArrayRef[CloudDirectory_FacetAttribute]',
                                 'class' => 'Paws::CloudDirectory::FacetAttribute'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
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

Paws::CloudDirectory::ListFacetAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[CloudDirectory_FacetAttribute]

The attributes attached to the facet.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

