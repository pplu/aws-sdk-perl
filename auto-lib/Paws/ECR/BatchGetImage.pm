# Generated from json/callargs_class.tt

package Paws::ECR::BatchGetImage;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ECR::Types qw/ECR_ImageIdentifier/;
  has AcceptedMediaTypes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ImageIds => (is => 'ro', isa => ArrayRef[ECR_ImageIdentifier], required => 1, predicate => 1);
  has RegistryId => (is => 'ro', isa => Str, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BatchGetImage');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECR::BatchGetImageResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'ImageIds' => {
                               'class' => 'Paws::ECR::ImageIdentifier',
                               'type' => 'ArrayRef[ECR_ImageIdentifier]'
                             },
               'AcceptedMediaTypes' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       }
             },
  'NameInRequest' => {
                       'ImageIds' => 'imageIds',
                       'RepositoryName' => 'repositoryName',
                       'RegistryId' => 'registryId',
                       'AcceptedMediaTypes' => 'acceptedMediaTypes'
                     },
  'IsRequired' => {
                    'ImageIds' => 1,
                    'RepositoryName' => 1
                  }
}
;
    return $Params_map;
  }

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

    my $api.ecr = Paws->service('ECR');
   # To obtain multiple images in a single request
   # This example obtains information for an image with a specified image digest
   # ID from the repository named ubuntu in the current account.
    my $BatchGetImageResponse = $api . ecr->BatchGetImage(
      'ImageIds' => [

        {
          'ImageTag' => 'precise'
        }
      ],
      'RepositoryName' => 'ubuntu'
    );

    # Results:
    my $failures = $BatchGetImageResponse->failures;
    my $images   = $BatchGetImageResponse->images;

    # Returns a L<Paws::ECR::BatchGetImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/BatchGetImage>

=head1 ATTRIBUTES


=head2 AcceptedMediaTypes => ArrayRef[Str|Undef]

The accepted media types for the request.

Valid values: C<application/vnd.docker.distribution.manifest.v1+json> |
C<application/vnd.docker.distribution.manifest.v2+json> |
C<application/vnd.oci.image.manifest.v1+json>



=head2 B<REQUIRED> ImageIds => ArrayRef[ECR_ImageIdentifier]

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

