
package Paws::CodeArtifact::DeletePackageVersionsResult;
  use Moose;
  has FailedVersions => (is => 'ro', isa => 'Paws::CodeArtifact::PackageVersionErrorMap', traits => ['NameInRequest'], request_name => 'failedVersions');
  has SuccessfulVersions => (is => 'ro', isa => 'Paws::CodeArtifact::SuccessfulPackageVersionInfoMap', traits => ['NameInRequest'], request_name => 'successfulVersions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DeletePackageVersionsResult

=head1 ATTRIBUTES


=head2 FailedVersions => L<Paws::CodeArtifact::PackageVersionErrorMap>

A C<PackageVersionError> object that contains a map of errors codes for
the deleted package that failed. The possible error codes are:

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

A list of the package versions that were successfully deleted.


=head2 _request_id => Str


=cut

