
package Aws::EC2::CreateVpcPeeringConnection {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has PeerOwnerId => (is => 'ro', isa => 'Str');
  has PeerVpcId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcPeeringConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateVpcPeeringConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
