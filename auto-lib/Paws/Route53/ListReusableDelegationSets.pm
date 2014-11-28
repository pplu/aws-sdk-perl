
package Paws::Route53::ListReusableDelegationSets {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReusableDelegationSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListReusableDelegationSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListReusableDelegationSetsResult');
}
1;