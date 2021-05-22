
package Paws::CodeArtifact::ListPackages;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has PackagePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package-prefix');
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPackages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/packages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::ListPackagesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListPackages - Arguments for method ListPackages on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPackages on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method ListPackages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPackages.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $ListPackagesResult = $codeartifact->ListPackages(
      Domain        => 'MyDomainName',
      Repository    => 'MyRepositoryName',
      DomainOwner   => 'MyAccountId',           # OPTIONAL
      Format        => 'npm',                   # OPTIONAL
      MaxResults    => 1,                       # OPTIONAL
      Namespace     => 'MyPackageNamespace',    # OPTIONAL
      NextToken     => 'MyPaginationToken',     # OPTIONAL
      PackagePrefix => 'MyPackageName',         # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPackagesResult->NextToken;
    my $Packages  = $ListPackagesResult->Packages;

    # Returns a L<Paws::CodeArtifact::ListPackagesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/ListPackages>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository that contains the
requested list of packages.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 Format => Str

The format of the packages. The valid package types are:

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

=head2 MaxResults => Int

The maximum number of results to return per page.



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

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 PackagePrefix => Str

A prefix used to filter returned packages. Only packages with names
that start with C<packagePrefix> are returned.



=head2 B<REQUIRED> Repository => Str

The name of the repository from which packages are to be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPackages in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

