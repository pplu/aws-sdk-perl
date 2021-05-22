
package Paws::CodeArtifact::CopyPackageVersions;
  use Moose;
  has AllowOverwrite => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowOverwrite');
  has DestinationRepository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'destination-repository', required => 1);
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has IncludeFromUpstream => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeFromUpstream');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has Package => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package', required => 1);
  has SourceRepository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'source-repository', required => 1);
  has VersionRevisions => (is => 'ro', isa => 'Paws::CodeArtifact::PackageVersionRevisionMap', traits => ['NameInRequest'], request_name => 'versionRevisions');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'versions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyPackageVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package/versions/copy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::CopyPackageVersionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::CopyPackageVersions - Arguments for method CopyPackageVersions on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyPackageVersions on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method CopyPackageVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyPackageVersions.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $CopyPackageVersionsResult = $codeartifact->CopyPackageVersions(
      DestinationRepository => 'MyRepositoryName',
      Domain                => 'MyDomainName',
      Format                => 'npm',
      Package               => 'MyPackageName',
      SourceRepository      => 'MyRepositoryName',
      AllowOverwrite        => 1,                       # OPTIONAL
      DomainOwner           => 'MyAccountId',           # OPTIONAL
      IncludeFromUpstream   => 1,                       # OPTIONAL
      Namespace             => 'MyPackageNamespace',    # OPTIONAL
      VersionRevisions      => {
        'MyPackageVersion' => 'MyPackageVersionRevision'
        ,    # key: min: 1, max: 255, value: min: 1, max: 50
      },    # OPTIONAL
      Versions => [
        'MyPackageVersion', ...    # min: 1, max: 255
      ],                           # OPTIONAL
    );

    # Results:
    my $FailedVersions     = $CopyPackageVersionsResult->FailedVersions;
    my $SuccessfulVersions = $CopyPackageVersionsResult->SuccessfulVersions;

    # Returns a L<Paws::CodeArtifact::CopyPackageVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/CopyPackageVersions>

=head1 ATTRIBUTES


=head2 AllowOverwrite => Bool

Set to true to overwrite a package version that already exists in the
destination repository. If set to false and the package version already
exists in the destination repository, the package version is returned
in the C<failedVersions> field of the response with an
C<ALREADY_EXISTS> error code.



=head2 B<REQUIRED> DestinationRepository => Str

The name of the repository into which package versions are copied.



=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the source and destination
repositories.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 B<REQUIRED> Format => Str

The format of the package that is copied. The valid package types are:

=over

=item *

C<npm>: A Node Package Manager (npm) package.

=item *

C<pypi>: A Python Package Index (PyPI) package.

=item *

C<maven>: A Maven package that contains compiled code in a
distributable format, such as a JAR file.

=back


Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">

=head2 IncludeFromUpstream => Bool

Set to true to copy packages from repositories that are upstream from
the source repository to the destination repository. The default
setting is false. For more information, see Working with upstream
repositories
(https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html).



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

The name of the package that is copied.



=head2 B<REQUIRED> SourceRepository => Str

The name of the repository that contains the package versions to copy.



=head2 VersionRevisions => L<Paws::CodeArtifact::PackageVersionRevisionMap>

A list of key-value pairs. The keys are package versions and the values
are package version revisions. A C<CopyPackageVersion> operation
succeeds if the specified versions in the source repository match the
specified package version revision.

You must specify C<versions> or C<versionRevisions>. You cannot specify
both.



=head2 Versions => ArrayRef[Str|Undef]

The versions of the package to copy.

You must specify C<versions> or C<versionRevisions>. You cannot specify
both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyPackageVersions in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

