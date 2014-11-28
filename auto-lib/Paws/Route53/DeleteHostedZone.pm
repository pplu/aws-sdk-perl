
package Paws::Route53::DeleteHostedZone {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHostedZone');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::DeleteHostedZoneResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteHostedZoneResult');
}
1;