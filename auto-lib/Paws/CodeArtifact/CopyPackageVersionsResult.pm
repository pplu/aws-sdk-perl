
package Paws::CodeArtifact::CopyPackageVersionsResult;
  use Moose;
  has FailedVersions => (is => 'ro', isa => 'Paws::CodeArtifact::PackageVersionErrorMap', traits => ['NameInRequest'], request_name => 'failedVersions');
  has SuccessfulVersions => (is => 'ro', isa => 'Paws::CodeArtifact::SuccessfulPackageVersionInfoMap', traits => ['NameInRequest'], request_name => 'successfulVersions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::CopyPackageVersionsResult

=head1 ATTRIBUTES


=head2 FailedVersions => L<Paws::CodeArtifact::PackageVersionErrorMap>

A map of package versions that failed to copy and their error codes.
The possible error codes are in the C<PackageVersionError> data type.
They are:

=over

=item *

C<ALREADY_EXISTS>

=item *

C<MISMATCHED_REVISION>

=item *

C<MISMATCHED_STATUS>

=item *

C<NOT_ALLOWED>

=item *

C<NOT_FOUND>

=item *

C<SKIPPED>

=back



=head2 SuccessfulVersions => L<Paws::CodeArtifact::SuccessfulPackageVersionInfoMap>

A list of the package versions that were successfully copied to your
repository.


=head2 _request_id => Str


=cut

