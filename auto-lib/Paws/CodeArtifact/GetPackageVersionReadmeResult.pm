
package Paws::CodeArtifact::GetPackageVersionReadmeResult;
  use Moose;
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace');
  has Package => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'package');
  has Readme => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readme');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');
  has VersionRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionRevision');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::GetPackageVersionReadmeResult

=head1 ATTRIBUTES


=head2 Format => Str

The format of the package with the requested readme file. Valid format
types are:

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



=head2 Package => Str

The name of the package that contains the returned readme file.


=head2 Readme => Str

The text of the returned readme file.


=head2 Version => Str

The version of the package with the requested readme file.


=head2 VersionRevision => Str

The current revision associated with the package version.


=head2 _request_id => Str


=cut

