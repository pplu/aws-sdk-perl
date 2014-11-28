
package Paws::Route53::DisassociateVPCFromHostedZone {
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
  has VPC => (is => 'ro', isa => 'Paws::Route53::VPC', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateVPCFromHostedZone');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::DisassociateVPCFromHostedZoneResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DisassociateVPCFromHostedZoneResult');
}
1;