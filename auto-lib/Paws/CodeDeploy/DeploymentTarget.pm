package Paws::CodeDeploy::DeploymentTarget;
  use Moose;
  has DeploymentTargetType => (is => 'ro', isa => 'Str', request_name => 'deploymentTargetType', traits => ['NameInRequest']);
  has EcsTarget => (is => 'ro', isa => 'Paws::CodeDeploy::ECSTarget', request_name => 'ecsTarget', traits => ['NameInRequest']);
  has InstanceTarget => (is => 'ro', isa => 'Paws::CodeDeploy::InstanceTarget', request_name => 'instanceTarget', traits => ['NameInRequest']);
  has LambdaTarget => (is => 'ro', isa => 'Paws::CodeDeploy::LambdaTarget', request_name => 'lambdaTarget', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeploymentTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::DeploymentTarget object:

  $service_obj->Method(Att1 => { DeploymentTargetType => $value, ..., LambdaTarget => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentTargetType

=head1 DESCRIPTION

Information about the deployment target.

=head1 ATTRIBUTES


=head2 DeploymentTargetType => Str

  The deployment type that is specific to the deployment's compute
platform.


=head2 EcsTarget => L<Paws::CodeDeploy::ECSTarget>

  Information about the target for a deployment that uses the Amazon ECS
compute platform.


=head2 InstanceTarget => L<Paws::CodeDeploy::InstanceTarget>

  Information about the target for a deployment that uses the
EC2/On-premises compute platform.


=head2 LambdaTarget => L<Paws::CodeDeploy::LambdaTarget>

  Information about the target for a deployment that uses the AWS Lambda
compute platform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

