
package Aws::ELB::CreateAccessPointOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has DNSName => (is => 'ro', isa => 'Str');

}
1;