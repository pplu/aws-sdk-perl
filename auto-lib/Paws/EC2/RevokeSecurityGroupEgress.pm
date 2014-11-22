
package Paws::EC2::RevokeSecurityGroupEgress {
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cidrIp' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has FromPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'fromPort' );
  has GroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupId' , required => 1);
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpPermission]', traits => ['NameInRequest'], request_name => 'ipPermissions' );
  has IpProtocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipProtocol' );
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceSecurityGroupName' );
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceSecurityGroupOwnerId' );
  has ToPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'toPort' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupEgress');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;