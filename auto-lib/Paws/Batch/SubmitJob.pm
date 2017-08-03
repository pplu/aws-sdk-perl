
package Paws::Batch::SubmitJob;
  use Moose;
  has ContainerOverrides => (is => 'ro', isa => 'Paws::Batch::ContainerOverrides');
  has DependsOn => (is => 'ro', isa => 'ArrayRef[Paws::Batch::JobDependency]');
  has JobDefinition => (is => 'ro', isa => 'Str', required => 1);
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has JobQueue => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Batch::ParametersMap');
  has RetryStrategy => (is => 'ro', isa => 'Paws::Batch::RetryStrategy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SubmitJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/submitjob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::SubmitJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::SubmitJob - Arguments for method SubmitJob on Paws::Batch

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubmitJob on the 
AWS Batch service. Use the attributes of this class
as arguments to method SubmitJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubmitJob.

As an example:

  $service_obj->SubmitJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ContainerOverrides => L<Paws::Batch::ContainerOverrides>

A list of container overrides in JSON format that specify the name of a
container in the specified job definition and the overrides it should
receive. You can override the default command for a container (that is
specified in the job definition or the Docker image) with a C<command>
override. You can also override existing environment variables (that
are specified in the job definition or Docker image) on a container or
add new environment variables to it with an C<environment> override.



=head2 DependsOn => ArrayRef[L<Paws::Batch::JobDependency>]

A list of job IDs on which this job depends. A job can depend upon a
maximum of 100 jobs.



=head2 B<REQUIRED> JobDefinition => Str

The job definition used by this job. This value can be either a
C<name:revision> or the Amazon Resource Name (ARN) for the job
definition.



=head2 B<REQUIRED> JobName => Str

The name of the job. A name must be 1 to 128 characters in length.

Pattern: ^[a-zA-Z0-9_]+$



=head2 B<REQUIRED> JobQueue => Str

The job queue into which the job will be submitted. You can specify
either the name or the Amazon Resource Name (ARN) of the queue.



=head2 Parameters => L<Paws::Batch::ParametersMap>

Additional parameters passed to the job that replace parameter
substitution placeholders that are set in the job definition.
Parameters are specified as a key and value pair mapping. Parameters in
a C<SubmitJob> request override any corresponding parameter defaults
from the job definition.



=head2 RetryStrategy => L<Paws::Batch::RetryStrategy>

The retry strategy to use for failed jobs from this SubmitJob
operation. When a retry strategy is specified here, it overrides the
retry strategy defined in the job definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubmitJob in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

