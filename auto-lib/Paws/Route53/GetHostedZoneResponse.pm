
package Paws::Route53::GetHostedZoneResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DelegationSet => (is => 'ro', isa => 'Paws::Route53::DelegationSet');
  has HostedZone => (is => 'ro', isa => 'Paws::Route53::HostedZone', required => 1);
  has VPCs => (is => 'ro', isa => 'ArrayRef[Paws::Route53::VPC]');

}
1;