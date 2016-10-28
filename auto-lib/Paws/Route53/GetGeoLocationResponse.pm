
package Paws::Route53::GetGeoLocationResponse;
  use Moose;
  has GeoLocationDetails => (is => 'ro', isa => 'Paws::Route53::GeoLocationDetails', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetGeoLocationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeoLocationDetails => L<Paws::Route53::GeoLocationDetails>

A complex type that contains the codes and full continent, country, and
subdivision names for the specified geolocation code.




=cut

