
package Paws::GreengrassV2::GetDeploymentResponse;
  use Moose;
  has Components => (is => 'ro', isa => 'Paws::GreengrassV2::ComponentDeploymentSpecifications', traits => ['NameInRequest'], request_name => 'components');
  has CreationTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTimestamp');
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId');
  has DeploymentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentName');
  has DeploymentPolicies => (is => 'ro', isa => 'Paws::GreengrassV2::DeploymentPolicies', traits => ['NameInRequest'], request_name => 'deploymentPolicies');
  has DeploymentStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentStatus');
  has IotJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iotJobArn');
  has IotJobConfiguration => (is => 'ro', isa => 'Paws::GreengrassV2::DeploymentIoTJobConfiguration', traits => ['NameInRequest'], request_name => 'iotJobConfiguration');
  has IotJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iotJobId');
  has IsLatestForTarget => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isLatestForTarget');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId');
  has Tags => (is => 'ro', isa => 'Paws::GreengrassV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::GetDeploymentResponse

=head1 ATTRIBUTES


=head2 Components => L<Paws::GreengrassV2::ComponentDeploymentSpecifications>

The components to deploy. This is a dictionary, where each key is the
name of a component, and each key's value is the version and
configuration to deploy for that component.


=head2 CreationTimestamp => Str

The time at which the deployment was created, expressed in ISO 8601
format.


=head2 DeploymentId => Str

The ID of the deployment.


=head2 DeploymentName => Str

The name of the deployment.

You can create deployments without names. If you create a deployment
without a name, the AWS IoT Greengrass V2 console shows the deployment
name as C<E<lt>targetTypeE<gt>:E<lt>targetNameE<gt>>, where
C<targetType> and C<targetName> are the type and name of the deployment
target.


=head2 DeploymentPolicies => L<Paws::GreengrassV2::DeploymentPolicies>

The deployment policies for the deployment. These policies define how
the deployment updates components and handles failure.


=head2 DeploymentStatus => Str

The status of the deployment.

Valid values are: C<"ACTIVE">, C<"COMPLETED">, C<"CANCELED">, C<"FAILED">, C<"INACTIVE">
=head2 IotJobArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the AWS IoT job that applies the deployment to target devices.


=head2 IotJobConfiguration => L<Paws::GreengrassV2::DeploymentIoTJobConfiguration>

The job configuration for the deployment configuration. The job
configuration specifies the rollout, timeout, and stop configurations
for the deployment configuration.


=head2 IotJobId => Str

The ID of the AWS IoT job that applies the deployment to target
devices.


=head2 IsLatestForTarget => Bool

Whether or not the deployment is the latest revision for its target.


=head2 RevisionId => Str

The revision number of the deployment.


=head2 Tags => L<Paws::GreengrassV2::TagMap>

A list of key-value pairs that contain metadata for the resource. For
more information, see Tag your resources
(https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html)
in the I<AWS IoT Greengrass V2 Developer Guide>.


=head2 TargetArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the target AWS IoT thing or thing group.


=head2 _request_id => Str


=cut

