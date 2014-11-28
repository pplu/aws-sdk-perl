
package Paws::Route53::CreateReusableDelegationSet {
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReusableDelegationSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateReusableDelegationSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReusableDelegationSetResult');
}
1;