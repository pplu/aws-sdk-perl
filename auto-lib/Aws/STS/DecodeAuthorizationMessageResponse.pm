
package Aws::STS::DecodeAuthorizationMessageResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has DecodedMessage => (is => 'ro', isa => 'Str');

}
1;