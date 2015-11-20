package Paws::ECS::Container;
  use Moose;
  has ContainerArn => (is => 'ro', isa => 'Str', xmlname => 'containerArn', request_name => 'containerArn', traits => ['Unwrapped','NameInRequest']);
  has ExitCode => (is => 'ro', isa => 'Int', xmlname => 'exitCode', request_name => 'exitCode', traits => ['Unwrapped','NameInRequest']);
  has LastStatus => (is => 'ro', isa => 'Str', xmlname => 'lastStatus', request_name => 'lastStatus', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has NetworkBindings => (is => 'ro', isa => 'ArrayRef[Paws::ECS::NetworkBinding]', xmlname => 'networkBindings', request_name => 'networkBindings', traits => ['Unwrapped','NameInRequest']);
  has Reason => (is => 'ro', isa => 'Str', xmlname => 'reason', request_name => 'reason', traits => ['Unwrapped','NameInRequest']);
  has TaskArn => (is => 'ro', isa => 'Str', xmlname => 'taskArn', request_name => 'taskArn', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Container

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Container object:

  $service_obj->Method(Att1 => { ContainerArn => $value, ..., TaskArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Container object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerArn

=head1 DESCRIPTION

A Docker container that is part of a task.

=head1 ATTRIBUTES


=head2 ContainerArn => Str

  The Amazon Resource Name (ARN) of the container.


=head2 ExitCode => Int

  The exit code returned from the container.


=head2 LastStatus => Str

  The last known status of the container.


=head2 Name => Str

  The name of the container.


=head2 NetworkBindings => ArrayRef[L<Paws::ECS::NetworkBinding>]

  The network bindings associated with the container.


=head2 Reason => Str

  A short (255 max characters) human-readable string to provide
additional detail about a running or stopped container.


=head2 TaskArn => Str

  The Amazon Resource Name (ARN) of the task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

