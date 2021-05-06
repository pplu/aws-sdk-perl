
package Paws::CodeDeploy::ContinueDeployment;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' );
  has DeploymentWaitType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentWaitType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ContinueDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ContinueDeployment - Arguments for method ContinueDeployment on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ContinueDeployment on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method ContinueDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ContinueDeployment.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    $codedeploy->ContinueDeployment(
      DeploymentId       => 'MyDeploymentId',    # OPTIONAL
      DeploymentWaitType => 'READY_WAIT',        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/ContinueDeployment>

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The unique ID of a blue/green deployment for which you want to start
rerouting traffic to the replacement environment.



=head2 DeploymentWaitType => Str

The status of the deployment's waiting period. READY_WAIT indicates the
deployment is ready to start shifting traffic. TERMINATION_WAIT
indicates the traffic is shifted, but the original target is not
terminated.

Valid values are: C<"READY_WAIT">, C<"TERMINATION_WAIT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ContinueDeployment in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

