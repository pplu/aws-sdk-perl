
package Paws::Route53::AssociateVPCWithHostedZone {
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
  has VPC => (is => 'ro', isa => 'Paws::Route53::VPC', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateVPCWithHostedZone');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::AssociateVPCWithHostedZoneResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AssociateVPCWithHostedZoneResult');
}
1;