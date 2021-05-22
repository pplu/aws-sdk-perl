
package Paws::CodeArtifact::ListPackageVersionsResult;
  use Moose;
  has DefaultDisplayVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultDisplayVersion');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Package => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'package');
  has Versions => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::PackageVersionSummary]', traits => ['NameInRequest'], request_name => 'versions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListPackageVersionsResult

=head1 ATTRIBUTES


=head2 DefaultDisplayVersion => Str

The default package version to display. This depends on the package
format:

=over

=item *

For Maven and PyPI packages, it's the most recently published package
version.

=item *

For npm packages, it's the version referenced by the C<latest> tag. If
the C<latest> tag is not set, it's the most recently published package
version.

=back



=head2 Format => Str

A format of the package. Valid package format values are:

=over

=item *

C<npm>

=item *

C<pypi>

=item *

C<maven>

=back


Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">
=head2 Namespace => Str

The namespace of the package. The package component that specifies its
namespace depends on its type. For example:

=over

=item *

The namespace of a Maven package is its C<groupId>.

=item *

The namespace of an npm package is its C<scope>.

=item *

A Python package does not contain a corresponding component, so Python
packages do not have a namespace.

=back



=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 Package => Str

The name of the package.


=head2 Versions => ArrayRef[L<Paws::CodeArtifact::PackageVersionSummary>]

The returned list of PackageVersionSummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html)
objects.


=head2 _request_id => Str


=cut

