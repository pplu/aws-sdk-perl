# Generated from json/callresult_class.tt

package Paws::ECR::PutImageScanningConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw/ECR_ImageScanningConfiguration/;
  has ImageScanningConfiguration => (is => 'ro', isa => ECR_ImageScanningConfiguration);
  has RegistryId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RegistryId' => 'registryId',
                       'RepositoryName' => 'repositoryName',
                       'ImageScanningConfiguration' => 'imageScanningConfiguration'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               'ImageScanningConfiguration' => {
                                                 'class' => 'Paws::ECR::ImageScanningConfiguration',
                                                 'type' => 'ECR_ImageScanningConfiguration'
                                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutImageScanningConfigurationResponse

=head1 ATTRIBUTES


=head2 ImageScanningConfiguration => ECR_ImageScanningConfiguration

The image scanning configuration setting for the repository.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 _request_id => Str


=cut

1;