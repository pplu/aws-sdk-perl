
package Paws::CodeArtifact::GetPackageVersionReadme;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has Package => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package', required => 1);
  has PackageVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPackageVersionReadme');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package/version/readme');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::GetPackageVersionReadmeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::GetPackageVersionReadme - Arguments for method GetPackageVersionReadme on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPackageVersionReadme on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method GetPackageVersionReadme.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPackageVersionReadme.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $GetPackageVersionReadmeResult = $codeartifact->GetPackageVersionReadme(
      Domain         => 'MyDomainName',
      Format         => 'npm',
      Package        => 'MyPackageName',
      PackageVersion => 'MyPackageVersion',
      Repository     => 'MyRepositoryName',
      DomainOwner    => 'MyAccountId',           # OPTIONAL
      Namespace      => 'MyPackageNamespace',    # OPTIONAL
    );

    # Results:
    my $Format          = $GetPackageVersionReadmeResult->Format;
    my $Namespace       = $GetPackageVersionReadmeResult->Namespace;
    my $Package         = $GetPackageVersionReadmeResult->Package;
    my $Readme          = $GetPackageVersionReadmeResult->Readme;
    my $Version         = $GetPackageVersionReadmeResult->Version;
    my $VersionRevision = $GetPackageVersionReadmeResult->VersionRevision;

    # Returns a L<Paws::CodeArtifact::GetPackageVersionReadmeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/GetPackageVersionReadme>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository that contains the
package version with the requested readme file.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 B<REQUIRED> Format => Str

A format that specifies the type of the package version with the
requested readme file. The valid values are:

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

The name of the package version that contains the requested readme
file.



=head2 B<REQUIRED> PackageVersion => Str

A string that contains the package version (for example, C<3.5.2>).



=head2 B<REQUIRED> Repository => Str

The repository that contains the package with the requested readme
file.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPackageVersionReadme in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

