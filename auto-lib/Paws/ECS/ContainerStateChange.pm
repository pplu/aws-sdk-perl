package Paws::ECS::ContainerStateChange;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str', request_name => 'containerName', traits => ['NameInRequest']);
  has ExitCode => (is => 'ro', isa => 'Int', request_name => 'exitCode', traits => ['NameInRequest']);
  has NetworkBindings => (is => 'ro', isa => 'ArrayRef[Paws::ECS::NetworkBinding]', request_name => 'networkBindings', traits => ['NameInRequest']);
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ContainerStateChange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ContainerStateChange object:

  $service_obj->Method(Att1 => { ContainerName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ContainerStateChange object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerName

=head1 DESCRIPTION

An object representing a change in state for a container.

=head1 ATTRIBUTES


=head2 ContainerName => Str

  The name of the container.


=head2 ExitCode => Int

  The exit code for the container, if the state change is a result of the
container exiting.


=head2 NetworkBindings => ArrayRef[L<Paws::ECS::NetworkBinding>]

  Any network bindings associated with the container.


=head2 Reason => Str

  The reason for the state change.


=head2 Status => Str

  The status of the container.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

