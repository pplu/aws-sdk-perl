
package Paws::Route53::ListGeoLocations {
  use Moose;
  has MaxItems => (is => 'ro', isa => 'Str');
  has StartContinentCode => (is => 'ro', isa => 'Str');
  has StartCountryCode => (is => 'ro', isa => 'Str');
  has StartSubdivisionCode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGeoLocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListGeoLocationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListGeoLocationsResult');
}
1;