
package Aws::EC2::AuthorizeSecurityGroupIngress {
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupIngress');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;