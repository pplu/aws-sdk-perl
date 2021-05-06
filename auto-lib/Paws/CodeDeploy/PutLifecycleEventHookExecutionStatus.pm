
package Paws::CodeDeploy::PutLifecycleEventHookExecutionStatus;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' );
  has LifecycleEventHookExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleEventHookExecutionId' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLifecycleEventHookExecutionStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::PutLifecycleEventHookExecutionStatusOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::PutLifecycleEventHookExecutionStatus - Arguments for method PutLifecycleEventHookExecutionStatus on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLifecycleEventHookExecutionStatus on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method PutLifecycleEventHookExecutionStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLifecycleEventHookExecutionStatus.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $PutLifecycleEventHookExecutionStatusOutput =
      $codedeploy->PutLifecycleEventHookExecutionStatus(
      DeploymentId => 'MyDeploymentId',    # OPTIONAL
      LifecycleEventHookExecutionId =>
        'MyLifecycleEventHookExecutionId',    # OPTIONAL
      Status => 'Pending',                    # OPTIONAL
      );

    # Results:
    my $LifecycleEventHookExecutionId =
      $PutLifecycleEventHookExecutionStatusOutput
      ->LifecycleEventHookExecutionId;

# Returns a L<Paws::CodeDeploy::PutLifecycleEventHookExecutionStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/PutLifecycleEventHookExecutionStatus>

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The unique ID of a deployment. Pass this ID to a Lambda function that
validates a deployment lifecycle event.



=head2 LifecycleEventHookExecutionId => Str

The execution ID of a deployment's lifecycle hook. A deployment
lifecycle hook is specified in the C<hooks> section of the AppSpec
file.



=head2 Status => Str

The result of a Lambda function that validates a deployment lifecycle
event (C<Succeeded> or C<Failed>).

Valid values are: C<"Pending">, C<"InProgress">, C<"Succeeded">, C<"Failed">, C<"Skipped">, C<"Unknown">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLifecycleEventHookExecutionStatus in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

