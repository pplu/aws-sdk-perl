
package Paws::CodeDeploy::DeleteDeploymentGroupOutput;
  use Moose;
  has HooksNotCleanedUp => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::AutoScalingGroup]', traits => ['NameInRequest'], request_name => 'hooksNotCleanedUp' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeleteDeploymentGroupOutput

=head1 ATTRIBUTES


=head2 HooksNotCleanedUp => ArrayRef[L<Paws::CodeDeploy::AutoScalingGroup>]

If the output contains no data, and the corresponding deployment group
contained at least one Auto Scaling group, AWS CodeDeploy successfully
removed all corresponding Auto Scaling lifecycle event hooks from the
Amazon EC2 instances in the Auto Scaling group. If the output contains
data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event
hooks from the Amazon EC2 instances in the Auto Scaling group.


=head2 _request_id => Str


=cut

1;