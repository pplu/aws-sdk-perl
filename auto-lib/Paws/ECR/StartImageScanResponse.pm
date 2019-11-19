# Generated from json/callresult_class.tt

package Paws::ECR::StartImageScanResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw/ECR_ImageIdentifier ECR_ImageScanStatus/;
  has ImageId => (is => 'ro', isa => ECR_ImageIdentifier);
  has ImageScanStatus => (is => 'ro', isa => ECR_ImageScanStatus);
  has RegistryId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ImageScanStatus' => 'imageScanStatus',
                       'RegistryId' => 'registryId',
                       'ImageId' => 'imageId',
                       'RepositoryName' => 'repositoryName'
                     },
  'types' => {
               'ImageScanStatus' => {
                                      'type' => 'ECR_ImageScanStatus',
                                      'class' => 'Paws::ECR::ImageScanStatus'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'ImageId' => {
                              'class' => 'Paws::ECR::ImageIdentifier',
                              'type' => 'ECR_ImageIdentifier'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::StartImageScanResponse

=head1 ATTRIBUTES


=head2 ImageId => ECR_ImageIdentifier




=head2 ImageScanStatus => ECR_ImageScanStatus

The current state of the scan.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 _request_id => Str


=cut

1;