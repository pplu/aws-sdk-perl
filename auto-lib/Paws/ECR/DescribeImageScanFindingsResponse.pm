# Generated from json/callresult_class.tt

package Paws::ECR::DescribeImageScanFindingsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw/ECR_ImageScanStatus ECR_ImageScanFindings ECR_ImageIdentifier/;
  has ImageId => (is => 'ro', isa => ECR_ImageIdentifier);
  has ImageScanFindings => (is => 'ro', isa => ECR_ImageScanFindings);
  has ImageScanStatus => (is => 'ro', isa => ECR_ImageScanStatus);
  has NextToken => (is => 'ro', isa => Str);
  has RegistryId => (is => 'ro', isa => Str);
  has RepositoryName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RegistryId' => 'registryId',
                       'NextToken' => 'nextToken',
                       'ImageScanStatus' => 'imageScanStatus',
                       'ImageScanFindings' => 'imageScanFindings',
                       'RepositoryName' => 'repositoryName',
                       'ImageId' => 'imageId'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ImageScanFindings' => {
                                        'type' => 'ECR_ImageScanFindings',
                                        'class' => 'Paws::ECR::ImageScanFindings'
                                      },
               'ImageId' => {
                              'type' => 'ECR_ImageIdentifier',
                              'class' => 'Paws::ECR::ImageIdentifier'
                            },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               'ImageScanStatus' => {
                                      'class' => 'Paws::ECR::ImageScanStatus',
                                      'type' => 'ECR_ImageScanStatus'
                                    },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeImageScanFindingsResponse

=head1 ATTRIBUTES


=head2 ImageId => ECR_ImageIdentifier




=head2 ImageScanFindings => ECR_ImageScanFindings

The information contained in the image scan findings.


=head2 ImageScanStatus => ECR_ImageScanStatus

The current state of the scan.


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<DescribeImageScanFindings> request. When the results of a
C<DescribeImageScanFindings> request exceed C<maxResults>, this value
can be used to retrieve the next page of results. This value is null
when there are no more results to return.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 _request_id => Str


=cut

1;