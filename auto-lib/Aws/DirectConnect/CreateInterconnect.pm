
package Aws::DirectConnect::CreateInterconnect {
  use Moose;
  has bandwidth => (is => 'ro', isa => 'Str', required => 1);
  has interconnectName => (is => 'ro', isa => 'Str', required => 1);
  has location => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInterconnect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::CreateInterconnectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;