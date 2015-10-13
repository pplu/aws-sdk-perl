package Paws::ECS::Container;
  use Moose;
  has containerArn => (is => 'ro', isa => 'Str');
  has exitCode => (is => 'ro', isa => 'Int');
  has lastStatus => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
  has networkBindings => (is => 'ro', isa => 'ArrayRef[Paws::ECS::NetworkBinding]');
  has reason => (is => 'ro', isa => 'Str');
  has taskArn => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { containerArn => $value, ..., taskArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Container object:

  $result = $service_obj->Method(...);
  $result->Att1->containerArn

=head1 DESCRIPTION

A Docker container that is part of a task.

=head1 ATTRIBUTES

=head2 containerArn => Str

  The Amazon Resource Name (ARN) of the container.

=head2 exitCode => Int

  The exit code returned from the container.

=head2 lastStatus => Str

  The last known status of the container.

=head2 name => Str

  The name of the container.

=head2 networkBindings => ArrayRef[L<Paws::ECS::NetworkBinding>]

  The network bindings associated with the container.

=head2 reason => Str

  A short (255 max characters) human-readable string to provide
additional detail about a running or stopped container.

=head2 taskArn => Str

  The Amazon Resource Name (ARN) of the task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

