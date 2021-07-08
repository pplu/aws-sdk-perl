
package Paws::CodeArtifact::UpdatePackageVersionsStatus;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has ExpectedStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expectedStatus');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has Package => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);
  has TargetStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetStatus', required => 1);
  has VersionRevisions => (is => 'ro', isa => 'Paws::CodeArtifact::PackageVersionRevisionMap', traits => ['NameInRequest'], request_name => 'versionRevisions');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'versions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePackageVersionsStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package/versions/update_status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::UpdatePackageVersionsStatusResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::UpdatePackageVersionsStatus - Arguments for method UpdatePackageVersionsStatus on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePackageVersionsStatus on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method UpdatePackageVersionsStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePackageVersionsStatus.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $UpdatePackageVersionsStatusResult =
      $codeartifact->UpdatePackageVersionsStatus(
      Domain       => 'MyDomainName',
      Format       => 'npm',
      Package      => 'MyPackageName',
      Repository   => 'MyRepositoryName',
      TargetStatus => 'Published',
      Versions     => [
        'MyPackageVersion', ...    # min: 1, max: 255
      ],
      DomainOwner      => 'MyAccountId',           # OPTIONAL
      ExpectedStatus   => 'Published',             # OPTIONAL
      Namespace        => 'MyPackageNamespace',    # OPTIONAL
      VersionRevisions => {
        'MyPackageVersion' => 'MyPackageVersionRevision'
        ,    # key: min: 1, max: 255, value: min: 1, max: 50
      },    # OPTIONAL
      );

    # Results:
    my $FailedVersions = $UpdatePackageVersionsStatusResult->FailedVersions;
    my $SuccessfulVersions =
      $UpdatePackageVersionsStatusResult->SuccessfulVersions;

    # Returns a L<Paws::CodeArtifact::UpdatePackageVersionsStatusResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/UpdatePackageVersionsStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository that contains the
package versions with a status to be updated.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 ExpectedStatus => Str

The package versionE<rsquo>s expected status before it is updated. If
C<expectedStatus> is provided, the package version's status is updated
only if its status at the time C<UpdatePackageVersionsStatus> is called
matches C<expectedStatus>.

Valid values are: C<"Published">, C<"Unfinished">, C<"Unlisted">, C<"Archived">, C<"Disposed">, C<"Deleted">

=head2 B<REQUIRED> Format => Str

A format that specifies the type of the package with the statuses to
update. The valid values are:

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




=head2 B<REQUIRED> Package => Str

The name of the package with the version statuses to update.



=head2 B<REQUIRED> Repository => Str

The repository that contains the package versions with the status you
want to update.



=head2 B<REQUIRED> TargetStatus => Str

The status you want to change the package version status to.

Valid values are: C<"Published">, C<"Unfinished">, C<"Unlisted">, C<"Archived">, C<"Disposed">, C<"Deleted">

=head2 VersionRevisions => L<Paws::CodeArtifact::PackageVersionRevisionMap>

A map of package versions and package version revisions. The map C<key>
is the package version (for example, C<3.5.2>), and the map C<value> is
the package version revision.



=head2 B<REQUIRED> Versions => ArrayRef[Str|Undef]

An array of strings that specify the versions of the package with the
statuses to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePackageVersionsStatus in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

