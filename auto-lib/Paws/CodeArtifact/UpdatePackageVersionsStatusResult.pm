
package Paws::CodeArtifact::UpdatePackageVersionsStatusResult;
  use Moose;
  has FailedVersions => (is => 'ro', isa => 'Paws::CodeArtifact::PackageVersionErrorMap', traits => ['NameInRequest'], request_name => 'failedVersions');
  has SuccessfulVersions => (is => 'ro', isa => 'Paws::CodeArtifact::SuccessfulPackageVersionInfoMap', traits => ['NameInRequest'], request_name => 'successfulVersions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::UpdatePackageVersionsStatusResult

=head1 ATTRIBUTES


=head2 FailedVersions => L<Paws::CodeArtifact::PackageVersionErrorMap>

A list of C<SuccessfulPackageVersionInfo> objects, one for each package
version with a status that successfully updated.


=head2 SuccessfulVersions => L<Paws::CodeArtifact::SuccessfulPackageVersionInfoMap>

A list of C<PackageVersionError> objects, one for each package version
with a status that failed to update.


=head2 _request_id => Str


=cut

