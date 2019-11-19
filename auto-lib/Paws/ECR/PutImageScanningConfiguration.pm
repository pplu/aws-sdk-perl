# Generated from json/callargs_class.tt

package Paws::ECR::PutImageScanningConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw/ECR_ImageScanningConfiguration/;
  has ImageScanningConfiguration => (is => 'ro', isa => ECR_ImageScanningConfiguration, required => 1, predicate => 1);
  has RegistryId => (is => 'ro', isa => Str, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutImageScanningConfiguration');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECR::PutImageScanningConfigurationResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ImageScanningConfiguration' => 1,
                    'RepositoryName' => 1
                  },
  'NameInRequest' => {
                       'ImageScanningConfiguration' => 'imageScanningConfiguration',
                       'RepositoryName' => 'repositoryName',
                       'RegistryId' => 'registryId'
                     },
  'types' => {
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'ImageScanningConfiguration' => {
                                                 'type' => 'ECR_ImageScanningConfiguration',
                                                 'class' => 'Paws::ECR::ImageScanningConfiguration'
                                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutImageScanningConfiguration - Arguments for method PutImageScanningConfiguration on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutImageScanningConfiguration on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method PutImageScanningConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutImageScanningConfiguration.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $PutImageScanningConfigurationResponse =
      $api . ecr->PutImageScanningConfiguration(
      ImageScanningConfiguration => {
        ScanOnPush => 1,    # OPTIONAL
      },
      RepositoryName => 'MyRepositoryName',
      RegistryId     => 'MyRegistryId',       # OPTIONAL
      );

    # Results:
    my $ImageScanningConfiguration =
      $PutImageScanningConfigurationResponse->ImageScanningConfiguration;
    my $RegistryId     = $PutImageScanningConfigurationResponse->RegistryId;
    my $RepositoryName = $PutImageScanningConfigurationResponse->RepositoryName;

    # Returns a L<Paws::ECR::PutImageScanningConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/PutImageScanningConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageScanningConfiguration => ECR_ImageScanningConfiguration

The image scanning configuration for the repository. This setting
determines whether images are scanned for known vulnerabilities after
being pushed to the repository.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository in which to update the image scanning configuration setting.
If you do not specify a registry, the default registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository in which to update the image scanning
configuration setting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutImageScanningConfiguration in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

