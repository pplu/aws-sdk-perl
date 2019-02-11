
package Paws::CodeDeploy::GetDeploymentTarget;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' );
  has TargetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeploymentTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::GetDeploymentTargetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentTarget - Arguments for method GetDeploymentTarget on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeploymentTarget on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method GetDeploymentTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeploymentTarget.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $GetDeploymentTargetOutput = $codedeploy->GetDeploymentTarget(
      DeploymentId => 'MyDeploymentId',    # OPTIONAL
      TargetId     => 'MyTargetId',        # OPTIONAL
    );

    # Results:
    my $DeploymentTarget = $GetDeploymentTargetOutput->DeploymentTarget;

    # Returns a L<Paws::CodeDeploy::GetDeploymentTargetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/GetDeploymentTarget>

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The unique ID of a deployment.



=head2 TargetId => Str

The unique ID of a deployment target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeploymentTarget in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

