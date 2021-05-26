
package Paws::ECR::DescribeImageScanFindingsResponse;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Paws::ECR::ImageIdentifier', traits => ['NameInRequest'], request_name => 'imageId' );
  has ImageScanFindings => (is => 'ro', isa => 'Paws::ECR::ImageScanFindings', traits => ['NameInRequest'], request_name => 'imageScanFindings' );
  has ImageScanStatus => (is => 'ro', isa => 'Paws::ECR::ImageScanStatus', traits => ['NameInRequest'], request_name => 'imageScanStatus' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeImageScanFindingsResponse

=head1 ATTRIBUTES


=head2 ImageId => L<Paws::ECR::ImageIdentifier>




=head2 ImageScanFindings => L<Paws::ECR::ImageScanFindings>

The information contained in the image scan findings.


=head2 ImageScanStatus => L<Paws::ECR::ImageScanStatus>

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