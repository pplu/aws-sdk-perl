
package Aws::STS::DecodeAuthorizationMessageResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DecodedMessage => (is => 'ro', isa => 'Str');

}
1;