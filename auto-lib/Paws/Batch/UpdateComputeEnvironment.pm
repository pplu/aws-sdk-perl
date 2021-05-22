
package Paws::Batch::UpdateComputeEnvironment;
  use Moose;
  has ComputeEnvironment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computeEnvironment', required => 1);
  has ComputeResources => (is => 'ro', isa => 'Paws::Batch::ComputeResourceUpdate', traits => ['NameInRequest'], request_name => 'computeResources');
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateComputeEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/updatecomputeenvironment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::UpdateComputeEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::UpdateComputeEnvironment - Arguments for method UpdateComputeEnvironment on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateComputeEnvironment on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method UpdateComputeEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateComputeEnvironment.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To update a compute environment
    # This example disables the P2OnDemand compute environment so it can be
    # deleted.
    my $UpdateComputeEnvironmentResponse = $batch->UpdateComputeEnvironment(
      'ComputeEnvironment' => 'P2OnDemand',
      'State'              => 'DISABLED'
    );

    # Results:
    my $computeEnvironmentArn =
      $UpdateComputeEnvironmentResponse->computeEnvironmentArn;
    my $computeEnvironmentName =
      $UpdateComputeEnvironmentResponse->computeEnvironmentName;

    # Returns a L<Paws::Batch::UpdateComputeEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/UpdateComputeEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeEnvironment => Str

The name or full Amazon Resource Name (ARN) of the compute environment
to update.



=head2 ComputeResources => L<Paws::Batch::ComputeResourceUpdate>

Details of the compute resources managed by the compute environment.
Required for a managed compute environment. For more information, see
Compute Environments
(https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html)
in the I<AWS Batch User Guide>.



=head2 ServiceRole => Str

The full Amazon Resource Name (ARN) of the IAM role that allows AWS
Batch to make calls to other AWS services on your behalf. For more
information, see AWS Batch service IAM role
(https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html)
in the I<AWS Batch User Guide>.

If the compute environment has a service-linked role, it cannot be
changed to use a regular IAM role. If the compute environment has a
regular IAM role, it cannot be changed to use a service-linked role.

If your specified role has a path other than C</>, then you must either
specify the full role ARN (this is recommended) or prefix the role name
with the path.

Depending on how you created your AWS Batch service role, its ARN might
contain the C<service-role> path prefix. When you only specify the name
of the service role, AWS Batch assumes that your ARN doesn't use the
C<service-role> path prefix. Because of this, we recommend that you
specify the full ARN of your service role when you create compute
environments.



=head2 State => Str

The state of the compute environment. Compute environments in the
C<ENABLED> state can accept jobs from a queue and scale in or out
automatically based on the workload demand of its associated queues.

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


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateComputeEnvironment in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

