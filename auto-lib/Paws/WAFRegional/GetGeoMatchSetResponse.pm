# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetGeoMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_GeoMatchSet/;
  has GeoMatchSet => (is => 'ro', isa => WAFRegional_GeoMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GeoMatchSet' => {
                                  'class' => 'Paws::WAFRegional::GeoMatchSet',
                                  'type' => 'WAFRegional_GeoMatchSet'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetGeoMatchSetResponse

=head1 ATTRIBUTES


=head2 GeoMatchSet => WAFRegional_GeoMatchSet

Information about the GeoMatchSet that you specified in the
C<GetGeoMatchSet> request. This includes the C<Type>, which for a
C<GeoMatchContraint> is always C<Country>, as well as the C<Value>,
which is the identifier for a specific country.


=head2 _request_id => Str


=cut

1;