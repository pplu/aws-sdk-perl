
package Paws::CodeArtifact::ListPackageVersionAssetsResult;
  use Moose;
  has Assets => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::AssetSummary]', traits => ['NameInRequest'], request_name => 'assets');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Package => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'package');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');
  has VersionRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionRevision');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListPackageVersionAssetsResult

=head1 ATTRIBUTES


=head2 Assets => ArrayRef[L<Paws::CodeArtifact::AssetSummary>]

The returned list of AssetSummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html)
objects.


=head2 Format => Str

The format of the package that contains the returned package version
assets.

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

The name of the package that contains the returned package version
assets.


=head2 Version => Str

The version of the package associated with the returned assets.


=head2 VersionRevision => Str

The current revision associated with the package version.


=head2 _request_id => Str


=cut

