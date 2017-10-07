
package Paws::Batch::CreateComputeEnvironment;
  use Moose;
  has ComputeEnvironmentName => (is => 'ro', isa => 'Str', required => 1);
  has ComputeResources => (is => 'ro', isa => 'Paws::Batch::ComputeResource');
  has ServiceRole => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateComputeEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/createcomputeenvironment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::CreateComputeEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::CreateComputeEnvironment - Arguments for method CreateComputeEnvironment on Paws::Batch

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateComputeEnvironment on the 
AWS Batch service. Use the attributes of this class
as arguments to method CreateComputeEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateComputeEnvironment.

As an example:

  $service_obj->CreateComputeEnvironment(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeEnvironmentName => Str

The name for your compute environment. Up to 128 letters (uppercase and
lowercase), numbers, and underscores are allowed.



=head2 ComputeResources => L<Paws::Batch::ComputeResource>

Details of the compute resources managed by the compute environment.
This parameter is required for managed compute environments.



=head2 B<REQUIRED> ServiceRole => Str

The full Amazon Resource Name (ARN) of the IAM role that allows AWS
Batch to make calls to other AWS services on your behalf.

If your specified role has a path other than C</>, then you must either
specify the full role ARN (this is recommended) or prefix the role name
with the path.

Depending on how you created your AWS Batch service role, its ARN may
contain the C<service-role> path prefix. When you only specify the name
of the service role, AWS Batch assumes that your ARN does not use the
C<service-role> path prefix. Because of this, we recommend that you
specify the full ARN of your service role when you create compute
environments.



=head2 State => Str

The state of the compute environment. If the state is C<ENABLED>, then
the compute environment accepts jobs from a queue and can scale out
automatically based on queues.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> Type => Str

The type of the compute environment.

Valid values are: C<"MANAGED">, C<"UNMANAGED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateComputeEnvironment in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

