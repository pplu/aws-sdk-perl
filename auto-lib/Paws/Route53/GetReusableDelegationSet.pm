
package Paws::Route53::GetReusableDelegationSet {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReusableDelegationSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetReusableDelegationSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetReusableDelegationSetResult');
}
1;