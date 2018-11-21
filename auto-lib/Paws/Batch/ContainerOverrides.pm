package Paws::Batch::ContainerOverrides;
  use Moose;
  has Command => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'command', traits => ['NameInRequest']);
  has Environment => (is => 'ro', isa => 'ArrayRef[Paws::Batch::KeyValuePair]', request_name => 'environment', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has Memory => (is => 'ro', isa => 'Int', request_name => 'memory', traits => ['NameInRequest']);
  has Vcpus => (is => 'ro', isa => 'Int', request_name => 'vcpus', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ContainerOverrides

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::ContainerOverrides object:

  $service_obj->Method(Att1 => { Command => $value, ..., Vcpus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::ContainerOverrides object:

  $result = $service_obj->Method(...);
  $result->Att1->Command

=head1 DESCRIPTION

The overrides that should be sent to a container.

=head1 ATTRIBUTES


=head2 Command => ArrayRef[Str|Undef]

  The command to send to the container that overrides the default command
from the Docker image or the job definition.


=head2 Environment => ArrayRef[L<Paws::Batch::KeyValuePair>]

  The environment variables to send to the container. You can add new
environment variables, which are added to the container at launch, or
you can override the existing environment variables from the Docker
image or the job definition.

Environment variables must not start with C<AWS_BATCH>; this naming
convention is reserved for variables that are set by the AWS Batch
service.


=head2 InstanceType => Str

  The instance type to use for a multi-node parallel job. This parameter
is not valid for single-node container jobs.


=head2 Memory => Int

  The number of MiB of memory reserved for the job. This value overrides
the value set in the job definition.


=head2 Vcpus => Int

  The number of vCPUs to reserve for the container. This value overrides
the value set in the job definition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

