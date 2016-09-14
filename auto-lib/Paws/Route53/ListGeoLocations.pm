
package Paws::Route53::ListGeoLocations;
  use Moose;
  has MaxItems => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maxitems' );
  has StartContinentCode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startcontinentcode' );
  has StartCountryCode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startcountrycode' );
  has StartSubdivisionCode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startsubdivisioncode' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGeoLocations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/geolocations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListGeoLocationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListGeoLocations

=head1 ATTRIBUTES


=head2 MaxItems => Str

(Optional) The maximum number of geolocations to be included in the
response body for this request. If more than C<MaxItems> geolocations
remain to be listed, then the value of the C<IsTruncated> element in
the response is C<true>.



=head2 StartContinentCode => Str

The code for the continent with which you want to start listing
locations that Amazon Route 53 supports for geolocation. If Amazon
Route 53 has already returned a page or more of results, if
C<IsTruncated> is true, and if C<NextContinentCode> from the previous
response has a value, enter that value in C<StartContinentCode> to
return the next page of results.

Include C<StartContinentCode> only if you want to list continents.
Don't include C<StartContinentCode> when you're listing countries or
countries with their subdivisions.



=head2 StartCountryCode => Str

The code for the country with which you want to start listing locations
that Amazon Route 53 supports for geolocation. If Amazon Route 53 has
already returned a page or more of results, if C<IsTruncated> is
C<true>, and if C<NextCountryCode> from the previous response has a
value, enter that value in C<StartCountryCode> to return the next page
of results.

Amazon Route 53 uses the two-letter country codes that are specified in
ISO standard 3166-1 alpha-2.



=head2 StartSubdivisionCode => Str

The code for the subdivision (for example, state or province) with
which you want to start listing locations that Amazon Route 53 supports
for geolocation. If Amazon Route 53 has already returned a page or more
of results, if C<IsTruncated> is C<true>, and if C<NextSubdivisionCode>
from the previous response has a value, enter that value in
C<StartSubdivisionCode> to return the next page of results.

To list subdivisions of a country, you must include both
C<StartCountryCode> and C<StartSubdivisionCode>.




=cut

