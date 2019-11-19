# Generated from json/callresult_class.tt

package Paws::WAF::GetGeoMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_GeoMatchSet/;
  has GeoMatchSet => (is => 'ro', isa => WAF_GeoMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GeoMatchSet' => {
                                  'class' => 'Paws::WAF::GeoMatchSet',
                                  'type' => 'WAF_GeoMatchSet'
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

Paws::WAF::GetGeoMatchSetResponse

=head1 ATTRIBUTES


=head2 GeoMatchSet => WAF_GeoMatchSet

Information about the GeoMatchSet that you specified in the
C<GetGeoMatchSet> request. This includes the C<Type>, which for a
C<GeoMatchContraint> is always C<Country>, as well as the C<Value>,
which is the identifier for a specific country.


=head2 _request_id => Str


=cut

1;