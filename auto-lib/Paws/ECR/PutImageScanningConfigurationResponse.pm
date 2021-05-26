
package Paws::ECR::PutImageScanningConfigurationResponse;
  use Moose;
  has ImageScanningConfiguration => (is => 'ro', isa => 'Paws::ECR::ImageScanningConfiguration', traits => ['NameInRequest'], request_name => 'imageScanningConfiguration' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutImageScanningConfigurationResponse

=head1 ATTRIBUTES


=head2 ImageScanningConfiguration => L<Paws::ECR::ImageScanningConfiguration>

The image scanning configuration setting for the repository.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 _request_id => Str


=cut

1;