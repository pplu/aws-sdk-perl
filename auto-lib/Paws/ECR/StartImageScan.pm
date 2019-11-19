# Generated from json/callargs_class.tt

package Paws::ECR::StartImageScan;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw/ECR_ImageIdentifier/;
  has ImageId => (is => 'ro', isa => ECR_ImageIdentifier, required => 1, predicate => 1);
  has RegistryId => (is => 'ro', isa => Str, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartImageScan');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECR::StartImageScanResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               'ImageId' => {
                              'class' => 'Paws::ECR::ImageIdentifier',
                              'type' => 'ECR_ImageIdentifier'
                            },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'RepositoryName' => 'repositoryName',
                       'ImageId' => 'imageId',
                       'RegistryId' => 'registryId'
                     },
  'IsRequired' => {
                    'RepositoryName' => 1,
                    'ImageId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::StartImageScan - Arguments for method StartImageScan on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartImageScan on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method StartImageScan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartImageScan.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $StartImageScanResponse = $api . ecr->StartImageScan(
      ImageId => {
        ImageDigest => 'MyImageDigest',    # OPTIONAL
        ImageTag    => 'MyImageTag',       # min: 1, max: 300; OPTIONAL
      },
      RepositoryName => 'MyRepositoryName',
      RegistryId     => 'MyRegistryId',       # OPTIONAL
    );

    # Results:
    my $ImageId         = $StartImageScanResponse->ImageId;
    my $ImageScanStatus = $StartImageScanResponse->ImageScanStatus;
    my $RegistryId      = $StartImageScanResponse->RegistryId;
    my $RepositoryName  = $StartImageScanResponse->RepositoryName;

    # Returns a L<Paws::ECR::StartImageScanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/StartImageScan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageId => ECR_ImageIdentifier





=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository in which to start an image scan request. If you do not
specify a registry, the default registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that contains the images to scan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartImageScan in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

