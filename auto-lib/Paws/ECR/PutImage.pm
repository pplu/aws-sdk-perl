
package Paws::ECR::PutImage;
  use Moose;
  has ImageManifest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageManifest' , required => 1);
  has ImageTag => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageTag' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::PutImageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutImage - Arguments for method PutImage on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutImage on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method PutImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutImage.

=head1 SYNOPSIS

    my $ecr = Paws->service('ECR');
    my $PutImageResponse = $ecr->PutImage(
      ImageManifest  => 'MyImageManifest',
      RepositoryName => 'MyRepositoryName',
      ImageTag       => 'MyImageTag',         # OPTIONAL
      RegistryId     => 'MyRegistryId',       # OPTIONAL
    );

    # Results:
    my $Image = $PutImageResponse->Image;

    # Returns a L<Paws::ECR::PutImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecr/PutImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageManifest => Str

The image manifest corresponding to the image to be uploaded.



=head2 ImageTag => Str

The tag to associate with the image. This parameter is required for
images that use the Docker Image Manifest V2 Schema 2 or OCI formats.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository in which to put the image. If you do not specify a registry,
the default registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository in which to put the image.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutImage in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

