
package Paws::Route53::GetHostedZone {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHostedZone');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetHostedZoneResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetHostedZoneResult');
}
1;