
package Paws::Route53::DisassociateVPCFromHostedZoneResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ChangeInfo => (is => 'ro', isa => 'Paws::Route53::ChangeInfo', required => 1);

}
1;