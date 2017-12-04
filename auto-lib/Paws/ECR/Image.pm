package Paws::ECR::Image;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Paws::ECR::ImageIdentifier', request_name => 'imageId', traits => ['NameInRequest']);
  has ImageManifest => (is => 'ro', isa => 'Str', request_name => 'imageManifest', traits => ['NameInRequest']);
  has RegistryId => (is => 'ro', isa => 'Str', request_name => 'registryId', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::Image

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::Image object:

  $service_obj->Method(Att1 => { ImageId => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::Image object:

  $result = $service_obj->Method(...);
  $result->Att1->ImageId

=head1 DESCRIPTION

An object representing an Amazon ECR image.

=head1 ATTRIBUTES


=head2 ImageId => L<Paws::ECR::ImageIdentifier>

  An object containing the image tag and image digest associated with an
image.


=head2 ImageManifest => Str

  The image manifest associated with the image.


=head2 RegistryId => Str

  The AWS account ID associated with the registry containing the image.


=head2 RepositoryName => Str

  The name of the repository associated with the image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

