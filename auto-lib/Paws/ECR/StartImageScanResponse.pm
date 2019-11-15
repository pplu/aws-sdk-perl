
package Paws::ECR::StartImageScanResponse;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Paws::ECR::ImageIdentifier', traits => ['NameInRequest'], request_name => 'imageId' );
  has ImageScanStatus => (is => 'ro', isa => 'Paws::ECR::ImageScanStatus', traits => ['NameInRequest'], request_name => 'imageScanStatus' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::StartImageScanResponse

=head1 ATTRIBUTES


=head2 ImageId => L<Paws::ECR::ImageIdentifier>




=head2 ImageScanStatus => L<Paws::ECR::ImageScanStatus>

The current state of the scan.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 _request_id => Str


=cut

1;