
package Paws::Route53::ListGeoLocations;
  use Moose;
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxitems', traits => ['ParamInQuery']);
  has StartContinentCode => (is => 'ro', isa => 'Str', query_name => 'startcontinentcode', traits => ['ParamInQuery']);
  has StartCountryCode => (is => 'ro', isa => 'Str', query_name => 'startcountrycode', traits => ['ParamInQuery']);
  has StartSubdivisionCode => (is => 'ro', isa => 'Str', query_name => 'startsubdivisioncode', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGeoLocations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/geolocations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListGeoLocationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListGeoLocations - Arguments for method ListGeoLocations on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGeoLocations on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListGeoLocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGeoLocations.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListGeoLocationsResponse = $route53->ListGeoLocations(
      MaxItems             => 'MyPageMaxItems',                  # OPTIONAL
      StartContinentCode   => 'MyGeoLocationContinentCode',      # OPTIONAL
      StartCountryCode     => 'MyGeoLocationCountryCode',        # OPTIONAL
      StartSubdivisionCode => 'MyGeoLocationSubdivisionCode',    # OPTIONAL
    );

    # Results:
    my $GeoLocationDetailsList =
      $ListGeoLocationsResponse->GeoLocationDetailsList;
    my $IsTruncated         = $ListGeoLocationsResponse->IsTruncated;
    my $MaxItems            = $ListGeoLocationsResponse->MaxItems;
    my $NextContinentCode   = $ListGeoLocationsResponse->NextContinentCode;
    my $NextCountryCode     = $ListGeoLocationsResponse->NextCountryCode;
    my $NextSubdivisionCode = $ListGeoLocationsResponse->NextSubdivisionCode;

    # Returns a L<Paws::Route53::ListGeoLocationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListGeoLocations>

=head1 ATTRIBUTES


=head2 MaxItems => Str

(Optional) The maximum number of geolocations to be included in the
response body for this request. If more than C<maxitems> geolocations
remain to be listed, then the value of the C<IsTruncated> element in
the response is C<true>.



=head2 StartContinentCode => Str

The code for the continent with which you want to start listing
locations that Amazon Route 53 supports for geolocation. If Route 53
has already returned a page or more of results, if C<IsTruncated> is
true, and if C<NextContinentCode> from the previous response has a
value, enter that value in C<startcontinentcode> to return the next
page of results.

Include C<startcontinentcode> only if you want to list continents.
Don't include C<startcontinentcode> when you're listing countries or
countries with their subdivisions.



=head2 StartCountryCode => Str

The code for the country with which you want to start listing locations
that Amazon Route 53 supports for geolocation. If Route 53 has already
returned a page or more of results, if C<IsTruncated> is C<true>, and
if C<NextCountryCode> from the previous response has a value, enter
that value in C<startcountrycode> to return the next page of results.

Route 53 uses the two-letter country codes that are specified in ISO
standard 3166-1 alpha-2
(https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).



=head2 StartSubdivisionCode => Str

The code for the subdivision (for example, state or province) with
which you want to start listing locations that Amazon Route 53 supports
for geolocation. If Route 53 has already returned a page or more of
results, if C<IsTruncated> is C<true>, and if C<NextSubdivisionCode>
from the previous response has a value, enter that value in
C<startsubdivisioncode> to return the next page of results.

To list subdivisions of a country, you must include both
C<startcountrycode> and C<startsubdivisioncode>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGeoLocations in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

