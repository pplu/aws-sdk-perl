package Paws::ECS::TaskDefinition;
  use Moose;
  has containerDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ContainerDefinition]');
  has family => (is => 'ro', isa => 'Str');
  has requiresAttributes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attribute]');
  has revision => (is => 'ro', isa => 'Int');
  has status => (is => 'ro', isa => 'Str');
  has taskDefinitionArn => (is => 'ro', isa => 'Str');
  has volumes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Volume]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::TaskDefinition

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::TaskDefinition object:

  $service_obj->Method(Att1 => { containerDefinitions => $value, ..., volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::TaskDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->containerDefinitions

=head1 ATTRIBUTES

=head2 containerDefinitions => ArrayRef[L<Paws::ECS::ContainerDefinition>]

  A list of container definitions in JSON format that describe the
different containers that make up your task. For more information about
container definition parameters and defaults, see Amazon ECS Task
Definitions in the I<Amazon EC2 Container Service Developer Guide>.

=head2 family => Str

  The family of your task definition, used as the definition name.

=head2 requiresAttributes => ArrayRef[L<Paws::ECS::Attribute>]

  The container instance attributes required by your task.

=head2 revision => Int

  The revision of the task in a particular family. The revision is a
version number of a task definition in a family. When you register a
task definition for the first time, the revision is C<1>; each time you
register a new revision of a task definition in the same family, the
revision value always increases by one (even if you have deregistered
previous revisions in this family).

=head2 status => Str

  The status of the task definition.

=head2 taskDefinitionArn => Str

  The full Amazon Resource Name (ARN) of the of the task definition.

=head2 volumes => ArrayRef[L<Paws::ECS::Volume>]

  The list of volumes in a task. For more information about volume
definition parameters and defaults, see Amazon ECS Task Definitions in
the I<Amazon EC2 Container Service Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

