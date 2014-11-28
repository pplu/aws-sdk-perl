
package Paws::Route53::CreateHostedZoneResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ChangeInfo => (is => 'ro', isa => 'Paws::Route53::ChangeInfo', required => 1);
  has DelegationSet => (is => 'ro', isa => 'Paws::Route53::DelegationSet', required => 1);
  has HostedZone => (is => 'ro', isa => 'Paws::Route53::HostedZone', required => 1);
  has Location => (is => 'ro', isa => 'Str', required => 1);
  has VPC => (is => 'ro', isa => 'Paws::Route53::VPC');

}
1;