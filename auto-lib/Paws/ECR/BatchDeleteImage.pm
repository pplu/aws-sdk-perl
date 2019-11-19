# Generated from json/callargs_class.tt

package Paws::ECR::BatchDeleteImage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECR::Types qw/ECR_ImageIdentifier/;
  has ImageIds => (is => 'ro', isa => ArrayRef[ECR_ImageIdentifier], required => 1, predicate => 1);
  has RegistryId => (is => 'ro', isa => Str, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BatchDeleteImage');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECR::BatchDeleteImageResponse');
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
                             }
             },
  'IsRequired' => {
                    'ImageIds' => 1,
                    'RepositoryName' => 1
                  },
  'NameInRequest' => {
                       'RegistryId' => 'registryId',
                       'ImageIds' => 'imageIds',
                       'RepositoryName' => 'repositoryName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::BatchDeleteImage - Arguments for method BatchDeleteImage on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteImage on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method BatchDeleteImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteImage.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    # To delete multiple images
    # This example deletes images with the tags precise and trusty in a
    # repository called ubuntu in the default registry for an account.
    my $BatchDeleteImageResponse = $api . ecr->BatchDeleteImage(
      'ImageIds' => [

        {
          'ImageTag' => 'precise'
        }
      ],
      'RepositoryName' => 'ubuntu'
    );

    # Results:
    my $failures = $BatchDeleteImageResponse->failures;
    my $imageIds = $BatchDeleteImageResponse->imageIds;

    # Returns a L<Paws::ECR::BatchDeleteImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/BatchDeleteImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageIds => ArrayRef[ECR_ImageIdentifier]

A list of image ID references that correspond to images to delete. The
format of the C<imageIds> reference is C<imageTag=tag> or
C<imageDigest=digest>.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the image
to delete. If you do not specify a registry, the default registry is
assumed.



=head2 B<REQUIRED> RepositoryName => Str

The repository that contains the image to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteImage in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

