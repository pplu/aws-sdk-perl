
package Paws::ECR::BatchGetImage;
  use Moose;
  has AcceptedMediaTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'acceptedMediaTypes' );
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Paws::ECR::ImageIdentifier]', traits => ['NameInRequest'], request_name => 'imageIds' , required => 1);
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::BatchGetImageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::BatchGetImage - Arguments for method BatchGetImage on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetImage on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method BatchGetImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetImage.

=head1 SYNOPSIS

    my $ecr = Paws->service('ECR');
   # To obtain multiple images in a single request
   # This example obtains information for an image with a specified image digest
   # ID from the repository named ubuntu in the current account.
    my $BatchGetImageResponse = $ecr->BatchGetImage(
      {
        'ImageIds' => [

          {
            'ImageTag' => 'precise'
          }
        ],
        'RepositoryName' => 'ubuntu'
      }
    );

    # Results:
    my $failures = $BatchGetImageResponse->failures;
    my $images   = $BatchGetImageResponse->images;

    # Returns a L<Paws::ECR::BatchGetImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecr/BatchGetImage>

=head1 ATTRIBUTES


=head2 AcceptedMediaTypes => ArrayRef[Str|Undef]

The accepted media types for the request.

Valid values: C<application/vnd.docker.distribution.manifest.v1+json> |
C<application/vnd.docker.distribution.manifest.v2+json> |
C<application/vnd.oci.image.manifest.v1+json>



=head2 B<REQUIRED> ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>]

A list of image ID references that correspond to images to describe.
The format of the C<imageIds> reference is C<imageTag=tag> or
C<imageDigest=digest>.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
images to describe. If you do not specify a registry, the default
registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The repository that contains the images to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetImage in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

