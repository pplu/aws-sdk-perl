
package Paws::SNS::GetPlatformApplicationAttributesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Paws::SNS::MapStringToString');

}
1;