package Paws::ECS::ContainerOverride;
  use Moose;
  has command => (is => 'ro', isa => 'ArrayRef[Str]');
  has environment => (is => 'ro', isa => 'ArrayRef[Paws::ECS::KeyValuePair]');
  has name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ContainerOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ContainerOverride object:

  $service_obj->Method(Att1 => { command => $value, ..., name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ContainerOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->command

=head1 DESCRIPTION

The overrides that should be sent to a container.

=head1 ATTRIBUTES

=head2 command => ArrayRef[Str]

  The command to send to the container that overrides the default command
from the Docker image or the task definition.

=head2 environment => ArrayRef[L<Paws::ECS::KeyValuePair>]

  The environment variables to send to the container. You can add new
environment variables, which are added to the container at launch, or
you can override the existing environment variables from the Docker
image or the task definition.

=head2 name => Str

  The name of the container that receives the override.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

