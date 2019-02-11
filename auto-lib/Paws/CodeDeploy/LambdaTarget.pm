package Paws::CodeDeploy::LambdaTarget;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', request_name => 'deploymentId', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has LifecycleEvents => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::LifecycleEvent]', request_name => 'lifecycleEvents', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TargetArn => (is => 'ro', isa => 'Str', request_name => 'targetArn', traits => ['NameInRequest']);
  has TargetId => (is => 'ro', isa => 'Str', request_name => 'targetId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::LambdaTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::LambdaTarget object:

  $service_obj->Method(Att1 => { DeploymentId => $value, ..., TargetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::LambdaTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentId

=head1 DESCRIPTION

Information about the target AWS Lambda function during an AWS Lambda
deployment.

=head1 ATTRIBUTES


=head2 DeploymentId => Str

  The unique ID of a deployment.


=head2 LastUpdatedAt => Str

  The date and time when the target Lambda function was updated by a
deployment.


=head2 LifecycleEvents => ArrayRef[L<Paws::CodeDeploy::LifecycleEvent>]

  The lifecycle events of the deployment to this target Lambda function.


=head2 Status => Str

  The status an AWS Lambda deployment's target Lambda function.


=head2 TargetArn => Str

  The ARN of the target.


=head2 TargetId => Str

  The unique ID of a deployment target that has a type of
C<lambdaTarget>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

