
package Aws::Route53Domains::RetrieveDomainAuthCodeResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has AuthCode => (is => 'ro', isa => 'Str', required => 1);

}
1;