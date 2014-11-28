
package Paws::Route53::GetGeoLocation {
  use Moose;
  has ContinentCode => (is => 'ro', isa => 'Str');
  has CountryCode => (is => 'ro', isa => 'Str');
  has SubdivisionCode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGeoLocation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetGeoLocationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetGeoLocationResult');
}
1;