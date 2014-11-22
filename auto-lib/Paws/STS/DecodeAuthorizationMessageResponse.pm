
package Paws::STS::DecodeAuthorizationMessageResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DecodedMessage => (is => 'ro', isa => 'Str');

}
1;