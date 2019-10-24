
package Paws::CloudDirectory::GetFacetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_Facet/;
  has Facet => (is => 'ro', isa => CloudDirectory_Facet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Facet' => {
                            'class' => 'Paws::CloudDirectory::Facet',
                            'type' => 'CloudDirectory_Facet'
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

Paws::CloudDirectory::GetFacetResponse

=head1 ATTRIBUTES


=head2 Facet => CloudDirectory_Facet

The Facet structure that is associated with the facet.


=head2 _request_id => Str


=cut

