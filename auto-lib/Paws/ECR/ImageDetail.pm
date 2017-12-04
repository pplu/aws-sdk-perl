package Paws::ECR::ImageDetail;
  use Moose;
  has ImageDigest => (is => 'ro', isa => 'Str', request_name => 'imageDigest', traits => ['NameInRequest']);
  has ImagePushedAt => (is => 'ro', isa => 'Str', request_name => 'imagePushedAt', traits => ['NameInRequest']);
  has ImageSizeInBytes => (is => 'ro', isa => 'Int', request_name => 'imageSizeInBytes', traits => ['NameInRequest']);
  has ImageTags => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'imageTags', traits => ['NameInRequest']);
  has RegistryId => (is => 'ro', isa => 'Str', request_name => 'registryId', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ImageDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::ImageDetail object:

  $service_obj->Method(Att1 => { ImageDigest => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::ImageDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ImageDigest

=head1 DESCRIPTION

An object that describes an image returned by a DescribeImages
operation.

=head1 ATTRIBUTES


=head2 ImageDigest => Str

  The C<sha256> digest of the image manifest.


=head2 ImagePushedAt => Str

  The date and time, expressed in standard JavaScript date format, at
which the current image was pushed to the repository.


=head2 ImageSizeInBytes => Int

  The size, in bytes, of the image in the repository.

Beginning with Docker version 1.9, the Docker client compresses image
layers before pushing them to a V2 Docker registry. The output of the
C<docker images> command shows the uncompressed image size, so it may
return a larger image size than the image sizes returned by
DescribeImages.


=head2 ImageTags => ArrayRef[Str|Undef]

  The list of tags associated with this image.


=head2 RegistryId => Str

  The AWS account ID associated with the registry to which this image
belongs.


=head2 RepositoryName => Str

  The name of the repository to which this image belongs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

