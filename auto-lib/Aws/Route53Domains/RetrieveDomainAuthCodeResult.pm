
package Aws::Route53Domains::RetrieveDomainAuthCodeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AuthCode => (is => 'ro', isa => 'Str', required => 1);

}
1;
