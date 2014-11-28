
package Paws::Route53::GetGeoLocationResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has GeoLocationDetails => (is => 'ro', isa => 'Paws::Route53::GeoLocationDetails', required => 1);

}
1;