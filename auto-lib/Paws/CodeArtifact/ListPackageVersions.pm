
package Paws::CodeArtifact::ListPackageVersions;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has Package => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'package', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPackageVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/package/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::ListPackageVersionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListPackageVersions - Arguments for method ListPackageVersions on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPackageVersions on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method ListPackageVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPackageVersions.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $ListPackageVersionsResult = $codeartifact->ListPackageVersions(
      Domain      => 'MyDomainName',
      Format      => 'npm',
      Package     => 'MyPackageName',
      Repository  => 'MyRepositoryName',
      DomainOwner => 'MyAccountId',           # OPTIONAL
      MaxResults  => 1,                       # OPTIONAL
      Namespace   => 'MyPackageNamespace',    # OPTIONAL
      NextToken   => 'MyPaginationToken',     # OPTIONAL
      SortBy      => 'PUBLISHED_TIME',        # OPTIONAL
      Status      => 'Published',             # OPTIONAL
    );

    # Results:
    my $DefaultDisplayVersion =
      $ListPackageVersionsResult->DefaultDisplayVersion;
    my $Format    = $ListPackageVersionsResult->Format;
    my $Namespace = $ListPackageVersionsResult->Namespace;
    my $NextToken = $ListPackageVersionsResult->NextToken;
    my $Package   = $ListPackageVersionsResult->Package;
    my $Versions  = $ListPackageVersionsResult->Versions;

    # Returns a L<Paws::CodeArtifact::ListPackageVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/ListPackageVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository that contains the
returned package versions.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 B<REQUIRED> Format => Str

The format of the returned packages. The valid package types are:

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



=head2 B<REQUIRED> Package => Str

The name of the package for which you want to return a list of package
versions.



=head2 B<REQUIRED> Repository => Str

The name of the repository that contains the package.



=head2 SortBy => Str

How to sort the returned list of package versions.

Valid values are: C<"PUBLISHED_TIME">

=head2 Status => Str

A string that specifies the status of the package versions to include
in the returned list. It can be one of the following:

=over

=item *

C<Published>

=item *

C<Unfinished>

=item *

C<Unlisted>

=item *

C<Archived>

=item *

C<Disposed>

=back


Valid values are: C<"Published">, C<"Unfinished">, C<"Unlisted">, C<"Archived">, C<"Disposed">, C<"Deleted">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPackageVersions in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

