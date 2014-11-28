
package Paws::Route53::GetChange {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetChange');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetChangeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetChangeResult');
}
1;