
package Aws::EC2::DeleteVpcPeeringConnection {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcPeeringConnectionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpcPeeringConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DeleteVpcPeeringConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;