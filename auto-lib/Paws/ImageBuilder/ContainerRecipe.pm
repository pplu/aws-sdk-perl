# Generated by default/object.tt
package Paws::ImageBuilder::ContainerRecipe;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Components => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::ComponentConfiguration]', request_name => 'components', traits => ['NameInRequest']);
  has ContainerType => (is => 'ro', isa => 'Str', request_name => 'containerType', traits => ['NameInRequest']);
  has DateCreated => (is => 'ro', isa => 'Str', request_name => 'dateCreated', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DockerfileTemplateData => (is => 'ro', isa => 'Str', request_name => 'dockerfileTemplateData', traits => ['NameInRequest']);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest']);
  has InstanceConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::InstanceConfiguration', request_name => 'instanceConfiguration', traits => ['NameInRequest']);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Owner => (is => 'ro', isa => 'Str', request_name => 'owner', traits => ['NameInRequest']);
  has ParentImage => (is => 'ro', isa => 'Str', request_name => 'parentImage', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has TargetRepository => (is => 'ro', isa => 'Paws::ImageBuilder::TargetContainerRepository', request_name => 'targetRepository', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
  has WorkingDirectory => (is => 'ro', isa => 'Str', request_name => 'workingDirectory', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ContainerRecipe

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::ContainerRecipe object:

  $service_obj->Method(Att1 => { Arn => $value, ..., WorkingDirectory => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::ContainerRecipe object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A container recipe.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the container recipe.


=head2 Components => ArrayRef[L<Paws::ImageBuilder::ComponentConfiguration>]

Components for build and test that are included in the container
recipe.


=head2 ContainerType => Str

Specifies the type of container, such as Docker.


=head2 DateCreated => Str

The date when this container recipe was created.


=head2 Description => Str

The description of the container recipe.


=head2 DockerfileTemplateData => Str

Dockerfiles are text documents that are used to build Docker
containers, and ensure that they contain all of the elements required
by the application running inside. The template data consists of
contextual variables where Image Builder places build information or
scripts, based on your container image recipe.


=head2 Encrypted => Bool

A flag that indicates if the target container is encrypted.


=head2 InstanceConfiguration => L<Paws::ImageBuilder::InstanceConfiguration>

A group of options that can be used to configure an instance for
building and testing container images.


=head2 KmsKeyId => Str

Identifies which KMS key is used to encrypt the container image for
distribution to the target Region.


=head2 Name => Str

The name of the container recipe.


=head2 Owner => Str

The owner of the container recipe.


=head2 ParentImage => Str

The source image for the container recipe.


=head2 Platform => Str

The system platform for the container, such as Windows or Linux.


=head2 Tags => L<Paws::ImageBuilder::TagMap>

Tags that are attached to the container recipe.


=head2 TargetRepository => L<Paws::ImageBuilder::TargetContainerRepository>

The destination repository for the container image.


=head2 Version => Str

The semantic version of the container recipe
(E<lt>majorE<gt>.E<lt>minorE<gt>.E<lt>patchE<gt>).


=head2 WorkingDirectory => Str

The working directory for use during build and test workflows.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

