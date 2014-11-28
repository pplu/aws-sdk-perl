
package Paws::Route53::CreateHostedZone {
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has DelegationSetId => (is => 'ro', isa => 'Str');
  has HostedZoneConfig => (is => 'ro', isa => 'Paws::Route53::HostedZoneConfig');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VPC => (is => 'ro', isa => 'Paws::Route53::VPC');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHostedZone');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateHostedZoneResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateHostedZoneResult');
}
1;