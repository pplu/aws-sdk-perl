
package Paws::Route53::GetGeoLocationResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_GeoLocationDetails/;
  has GeoLocationDetails => (is => 'ro', isa => Route53_GeoLocationDetails, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GeoLocationDetails' => {
                                         'class' => 'Paws::Route53::GeoLocationDetails',
                                         'type' => 'Route53_GeoLocationDetails'
                                       }
             },
  'IsRequired' => {
                    'GeoLocationDetails' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetGeoLocationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeoLocationDetails => Route53_GeoLocationDetails

A complex type that contains the codes and full continent, country, and
subdivision names for the specified geolocation code.




=cut

