
package Paws::Batch::CreateComputeEnvironment;
  use Moose;
  has ComputeEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computeEnvironmentName', required => 1);
  has ComputeResources => (is => 'ro', isa => 'Paws::Batch::ComputeResource', traits => ['NameInRequest'], request_name => 'computeResources');
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagrisTagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateComputeEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/createcomputeenvironment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::CreateComputeEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::CreateComputeEnvironment - Arguments for method CreateComputeEnvironment on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateComputeEnvironment on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method CreateComputeEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateComputeEnvironment.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
  # To create a managed EC2 compute environment
  # This example creates a managed compute environment with specific C4 instance
  # types that are launched on demand. The compute environment is called
  # C4OnDemand.
    my $CreateComputeEnvironmentResponse = $batch->CreateComputeEnvironment(
      'ComputeEnvironmentName' => 'C4OnDemand',
      'ComputeResources'       => {
        'DesiredvCpus'  => 48,
        'Ec2KeyPair'    => 'id_rsa',
        'InstanceRole'  => 'ecsInstanceRole',
        'InstanceTypes' =>
          [ 'c4.large', 'c4.xlarge', 'c4.2xlarge', 'c4.4xlarge', 'c4.8xlarge' ],
        'MaxvCpus'         => 128,
        'MinvCpus'         => 0,
        'SecurityGroupIds' => ['sg-cf5093b2'],
        'Subnets'          =>
          [ 'subnet-220c0e0a', 'subnet-1a95556d', 'subnet-978f6dce' ],
        'Tags' => {
          'Name' => 'Batch Instance - C4OnDemand'
        },
        'Type' => 'EC2'
      },
      'ServiceRole' => 'arn:aws:iam::012345678910:role/AWSBatchServiceRole',
      'State'       => 'ENABLED',
      'Type'        => 'MANAGED'
    );

    # Results:
    my $computeEnvironmentArn =
      $CreateComputeEnvironmentResponse->computeEnvironmentArn;
    my $computeEnvironmentName =
      $CreateComputeEnvironmentResponse->computeEnvironmentName;

  # Returns a L<Paws::Batch::CreateComputeEnvironmentResponse> object.
  # To create a managed EC2 Spot compute environment
  # This example creates a managed compute environment with the M4 instance type
  # that is launched when the Spot bid price is at or below 20% of the On-Demand
  # price for the instance type. The compute environment is called M4Spot.
    my $CreateComputeEnvironmentResponse = $batch->CreateComputeEnvironment(
      'ComputeEnvironmentName' => 'M4Spot',
      'ComputeResources'       => {
        'BidPercentage'    => 20,
        'DesiredvCpus'     => 4,
        'Ec2KeyPair'       => 'id_rsa',
        'InstanceRole'     => 'ecsInstanceRole',
        'InstanceTypes'    => ['m4'],
        'MaxvCpus'         => 128,
        'MinvCpus'         => 0,
        'SecurityGroupIds' => ['sg-cf5093b2'],
        'SpotIamFleetRole' =>
          'arn:aws:iam::012345678910:role/aws-ec2-spot-fleet-role',
        'Subnets' =>
          [ 'subnet-220c0e0a', 'subnet-1a95556d', 'subnet-978f6dce' ],
        'Tags' => {
          'Name' => 'Batch Instance - M4Spot'
        },
        'Type' => 'SPOT'
      },
      'ServiceRole' => 'arn:aws:iam::012345678910:role/AWSBatchServiceRole',
      'State'       => 'ENABLED',
      'Type'        => 'MANAGED'
    );

    # Results:
    my $computeEnvironmentArn =
      $CreateComputeEnvironmentResponse->computeEnvironmentArn;
    my $computeEnvironmentName =
      $CreateComputeEnvironmentResponse->computeEnvironmentName;

    # Returns a L<Paws::Batch::CreateComputeEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/CreateComputeEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeEnvironmentName => Str

The name for your compute environment. Up to 128 letters (uppercase and
lowercase), numbers, hyphens, and underscores are allowed.



=head2 ComputeResources => L<Paws::Batch::ComputeResource>

Details about the compute resources managed by the compute environment.
This parameter is required for managed compute environments. For more
information, see Compute Environments
(https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html)
in the I<AWS Batch User Guide>.



=head2 ServiceRole => Str

The full Amazon Resource Name (ARN) of the IAM role that allows AWS
Batch to make calls to other AWS services on your behalf. For more
information, see AWS Batch service IAM role
(https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html)
in the I<AWS Batch User Guide>.

If your account has already created the AWS Batch service-linked role,
that role is used by default for your compute environment unless you
specify a role here. If the AWS Batch service-linked role does not
exist in your account, and no role is specified here, the service will
try to create the AWS Batch service-linked role in your account.

If your specified role has a path other than C</>, then you must
specify either the full role ARN (recommended) or prefix the role name
with the path. For example, if a role with the name C<bar> has a path
of C</foo/> then you would specify C</foo/bar> as the role name. For
more information, see Friendly names and paths
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names)
in the I<IAM User Guide>.

Depending on how you created your AWS Batch service role, its ARN might
contain the C<service-role> path prefix. When you only specify the name
of the service role, AWS Batch assumes that your ARN doesn't use the
C<service-role> path prefix. Because of this, we recommend that you
specify the full ARN of your service role when you create compute
environments.



=head2 State => Str

The state of the compute environment. If the state is C<ENABLED>, then
the compute environment accepts jobs from a queue and can scale out
automatically based on queues.

If the state is C<ENABLED>, then the AWS Batch scheduler can attempt to
place jobs from an associated job queue on the compute resources within
the environment. If the compute environment is managed, then it can
scale its instances out or in automatically, based on the job queue
demand.

If the state is C<DISABLED>, then the AWS Batch scheduler doesn't
attempt to place jobs within the environment. Jobs in a C<STARTING> or
C<RUNNING> state continue to progress normally. Managed compute
environments in the C<DISABLED> state don't scale out. However, they
scale in to C<minvCpus> value after instances become idle.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Tags => L<Paws::Batch::TagrisTagsMap>

The tags that you apply to the compute environment to help you
categorize and organize your resources. Each tag consists of a key and
an optional value. For more information, see Tagging AWS Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
I<AWS General Reference>.

These tags can be updated or removed using the TagResource
(https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html)
and UntagResource
(https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html)
API operations. These tags don't propagate to the underlying compute
resources.



=head2 B<REQUIRED> Type => Str

The type of the compute environment: C<MANAGED> or C<UNMANAGED>. For
more information, see Compute Environments
(https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html)
in the I<AWS Batch User Guide>.

Valid values are: C<"MANAGED">, C<"UNMANAGED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateComputeEnvironment in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

