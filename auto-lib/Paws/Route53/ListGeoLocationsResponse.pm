
package Paws::Route53::ListGeoLocationsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has GeoLocationDetailsList => (is => 'ro', isa => 'ArrayRef[Paws::Route53::GeoLocationDetails]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextContinentCode => (is => 'ro', isa => 'Str');
  has NextCountryCode => (is => 'ro', isa => 'Str');
  has NextSubdivisionCode => (is => 'ro', isa => 'Str');

}
1;