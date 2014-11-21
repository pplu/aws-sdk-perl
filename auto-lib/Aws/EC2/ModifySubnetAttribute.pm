
package Aws::EC2::ModifySubnetAttribute {
  use Moose;
  has MapPublicIpOnLaunch => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subnetId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySubnetAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;