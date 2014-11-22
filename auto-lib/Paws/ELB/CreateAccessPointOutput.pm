
package Paws::ELB::CreateAccessPointOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has DNSName => (is => 'ro', isa => 'Str');

}
1;