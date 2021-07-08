
package Paws::GreengrassV2::CreateDeploymentResponse;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId');
  has IotJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iotJobArn');
  has IotJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iotJobId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::CreateDeploymentResponse

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The ID of the deployment.


=head2 IotJobArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the AWS IoT job that applies the deployment to target devices.


=head2 IotJobId => Str

The ID of the AWS IoT job that applies the deployment to target
devices.


=head2 _request_id => Str


=cut

