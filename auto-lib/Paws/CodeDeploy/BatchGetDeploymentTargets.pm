
package Paws::CodeDeploy::BatchGetDeploymentTargets;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' );
  has TargetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targetIds' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetDeploymentTargets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::BatchGetDeploymentTargetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentTargets - Arguments for method BatchGetDeploymentTargets on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetDeploymentTargets on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method BatchGetDeploymentTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetDeploymentTargets.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $BatchGetDeploymentTargetsOutput =
      $codedeploy->BatchGetDeploymentTargets(
      DeploymentId => 'MyDeploymentId',      # OPTIONAL
      TargetIds => [ 'MyTargetId', ... ],    # OPTIONAL
      );

    # Results:
    my $DeploymentTargets = $BatchGetDeploymentTargetsOutput->DeploymentTargets;

    # Returns a L<Paws::CodeDeploy::BatchGetDeploymentTargetsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/BatchGetDeploymentTargets>

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The unique ID of a deployment.



=head2 TargetIds => ArrayRef[Str|Undef]

The unique IDs of the deployment targets. The compute platform of the
deployment determines the type of the targets and their formats.

=over

=item *

For deployments that use the EC2/On-premises compute platform, the
target IDs are EC2 or on-premises instances IDs, and their target type
is C<instanceTarget>.

=item *

For deployments that use the AWS Lambda compute platform, the target
IDs are the names of Lambda functions, and their target type is
C<instanceTarget>.

=item *

For deployments that use the Amazon ECS compute platform, the target
IDs are pairs of Amazon ECS clusters and services specified using the
format C<E<lt>clusternameE<gt>:E<lt>servicenameE<gt>>. Their target
type is C<ecsTarget>.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetDeploymentTargets in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

