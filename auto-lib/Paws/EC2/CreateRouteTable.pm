
package Paws::EC2::CreateRouteTable {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRouteTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateRouteTableResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;