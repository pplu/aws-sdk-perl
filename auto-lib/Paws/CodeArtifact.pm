package Paws::CodeArtifact;
  use Moose;
  sub service { 'codeartifact' }
  sub signing_name { 'codeartifact' }
  sub version { '2018-09-22' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateExternalConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::AssociateExternalConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyPackageVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::CopyPackageVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::CreateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomainPermissionsPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::DeleteDomainPermissionsPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePackageVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::DeletePackageVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::DeleteRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRepositoryPermissionsPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::DeleteRepositoryPermissionsPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::DescribeDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePackageVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::DescribePackageVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::DescribeRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateExternalConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::DisassociateExternalConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisposePackageVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::DisposePackageVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAuthorizationToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::GetAuthorizationToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainPermissionsPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::GetDomainPermissionsPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPackageVersionAsset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::GetPackageVersionAsset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPackageVersionReadme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::GetPackageVersionReadme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepositoryEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::GetRepositoryEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepositoryPermissionsPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::GetRepositoryPermissionsPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::ListPackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPackageVersionAssets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::ListPackageVersionAssets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPackageVersionDependencies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::ListPackageVersionDependencies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPackageVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::ListPackageVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::ListRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRepositoriesInDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::ListRepositoriesInDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDomainPermissionsPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::PutDomainPermissionsPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRepositoryPermissionsPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::PutRepositoryPermissionsPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePackageVersionsStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::UpdatePackageVersionsStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeArtifact::UpdateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDomains(@_, nextToken => $next_result->nextToken);
        push @{ $result->domains }, @{ $next_result->domains };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'domains') foreach (@{ $result->domains });
        $result = $self->ListDomains(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'domains') foreach (@{ $result->domains });
    }

    return undef
  }
  sub ListAllPackages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPackages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPackages(@_, nextToken => $next_result->nextToken);
        push @{ $result->packages }, @{ $next_result->packages };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'packages') foreach (@{ $result->packages });
        $result = $self->ListPackages(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'packages') foreach (@{ $result->packages });
    }

    return undef
  }
  sub ListAllPackageVersionAssets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPackageVersionAssets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPackageVersionAssets(@_, nextToken => $next_result->nextToken);
        push @{ $result->assets }, @{ $next_result->assets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assets') foreach (@{ $result->assets });
        $result = $self->ListPackageVersionAssets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assets') foreach (@{ $result->assets });
    }

    return undef
  }
  sub ListAllPackageVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPackageVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPackageVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->versions }, @{ $next_result->versions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'versions') foreach (@{ $result->versions });
        $result = $self->ListPackageVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'versions') foreach (@{ $result->versions });
    }

    return undef
  }
  sub ListAllRepositories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRepositories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRepositories(@_, nextToken => $next_result->nextToken);
        push @{ $result->repositories }, @{ $next_result->repositories };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'repositories') foreach (@{ $result->repositories });
        $result = $self->ListRepositories(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'repositories') foreach (@{ $result->repositories });
    }

    return undef
  }
  sub ListAllRepositoriesInDomain {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRepositoriesInDomain(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRepositoriesInDomain(@_, nextToken => $next_result->nextToken);
        push @{ $result->repositories }, @{ $next_result->repositories };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'repositories') foreach (@{ $result->repositories });
        $result = $self->ListRepositoriesInDomain(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'repositories') foreach (@{ $result->repositories });
    }

    return undef
  }


  sub operations { qw/AssociateExternalConnection CopyPackageVersions CreateDomain CreateRepository DeleteDomain DeleteDomainPermissionsPolicy DeletePackageVersions DeleteRepository DeleteRepositoryPermissionsPolicy DescribeDomain DescribePackageVersion DescribeRepository DisassociateExternalConnection DisposePackageVersions GetAuthorizationToken GetDomainPermissionsPolicy GetPackageVersionAsset GetPackageVersionReadme GetRepositoryEndpoint GetRepositoryPermissionsPolicy ListDomains ListPackages ListPackageVersionAssets ListPackageVersionDependencies ListPackageVersions ListRepositories ListRepositoriesInDomain ListTagsForResource PutDomainPermissionsPolicy PutRepositoryPermissionsPolicy TagResource UntagResource UpdatePackageVersionsStatus UpdateRepository / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact - Perl Interface to AWS CodeArtifact

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeArtifact');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS CodeArtifact is a fully managed artifact repository compatible with
language-native package managers and build tools such as npm, Apache
Maven, and pip. You can use CodeArtifact to share packages with
development teams and pull packages. Packages can be pulled from both
public and CodeArtifact repositories. You can also create an upstream
relationship between a CodeArtifact repository and another repository,
which effectively merges their contents from the point of view of a
package manager client.

B<AWS CodeArtifact Components>

Use the information in this guide to help you work with the following
CodeArtifact components:

=over

=item *

B<Repository>: A CodeArtifact repository contains a set of package
versions
(https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version),
each of which maps to a set of assets, or files. Repositories are
polyglot, so a single repository can contain packages of any supported
type. Each repository exposes endpoints for fetching and publishing
packages using tools like the B< C<npm> > CLI, the Maven CLI (B< C<mvn>
>), and B< C<pip> >.

=item *

B<Domain>: Repositories are aggregated into a higher-level entity known
as a I<domain>. All package assets and metadata are stored in the
domain, but are consumed through repositories. A given package asset,
such as a Maven JAR file, is stored once per domain, no matter how many
repositories it's present in. All of the assets and metadata in a
domain are encrypted with the same customer master key (CMK) stored in
AWS Key Management Service (AWS KMS).

Each repository is a member of a single domain and can't be moved to a
different domain.

The domain allows organizational policy to be applied across multiple
repositories, such as which accounts can access repositories in the
domain, and which public repositories can be used as sources of
packages.

Although an organization can have multiple domains, we recommend a
single production domain that contains all published artifacts so that
teams can find and share packages across their organization.

=item *

B<Package>: A I<package> is a bundle of software and the metadata
required to resolve dependencies and install the software. CodeArtifact
supports npm
(https://docs.aws.amazon.com/codeartifact/latest/ug/using-npm.html),
PyPI
(https://docs.aws.amazon.com/codeartifact/latest/ug/using-python.html),
and Maven
(https://docs.aws.amazon.com/codeartifact/latest/ug/using-maven)
package formats.

In CodeArtifact, a package consists of:

=over

=item *

A I<name> (for example, C<webpack> is the name of a popular npm
package)

=item *

An optional namespace (for example, C<@types> in C<@types/node>)

=item *

A set of versions (for example, C<1.0.0>, C<1.0.1>, C<1.0.2>, etc.)

=item *

Package-level metadata (for example, npm tags)

=back

=item *

B<Package version>: A version of a package, such as C<@types/node
12.6.9>. The version number format and semantics vary for different
package formats. For example, npm package versions must conform to the
Semantic Versioning specification (https://semver.org/). In
CodeArtifact, a package version consists of the version identifier,
metadata at the package version level, and a set of assets.

=item *

B<Upstream repository>: One repository is I<upstream> of another when
the package versions in it can be accessed from the repository endpoint
of the downstream repository, effectively merging the contents of the
two repositories from the point of view of a client. CodeArtifact
allows creating an upstream relationship between two repositories.

=item *

B<Asset>: An individual file stored in CodeArtifact associated with a
package version, such as an npm C<.tgz> file or Maven POM and JAR
files.

=back

CodeArtifact supports these operations:

=over

=item *

C<AssociateExternalConnection>: Adds an existing external connection to
a repository.

=item *

C<CopyPackageVersions>: Copies package versions from one repository to
another repository in the same domain.

=item *

C<CreateDomain>: Creates a domain

=item *

C<CreateRepository>: Creates a CodeArtifact repository in a domain.

=item *

C<DeleteDomain>: Deletes a domain. You cannot delete a domain that
contains repositories.

=item *

C<DeleteDomainPermissionsPolicy>: Deletes the resource policy that is
set on a domain.

=item *

C<DeletePackageVersions>: Deletes versions of a package. After a
package has been deleted, it can be republished, but its assets and
metadata cannot be restored because they have been permanently removed
from storage.

=item *

C<DeleteRepository>: Deletes a repository.

=item *

C<DeleteRepositoryPermissionsPolicy>: Deletes the resource policy that
is set on a repository.

=item *

C<DescribeDomain>: Returns a C<DomainDescription> object that contains
information about the requested domain.

=item *

C<DescribePackageVersion>: Returns a PackageVersionDescription
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
object that contains details about a package version.

=item *

C<DescribeRepository>: Returns a C<RepositoryDescription> object that
contains detailed information about the requested repository.

=item *

C<DisposePackageVersions>: Disposes versions of a package. A package
version with the status C<Disposed> cannot be restored because they
have been permanently removed from storage.

=item *

C<DisassociateExternalConnection>: Removes an existing external
connection from a repository.

=item *

C<GetAuthorizationToken>: Generates a temporary authorization token for
accessing repositories in the domain. The token expires the
authorization period has passed. The default authorization period is 12
hours and can be customized to any length with a maximum of 12 hours.

=item *

C<GetDomainPermissionsPolicy>: Returns the policy of a resource that is
attached to the specified domain.

=item *

C<GetPackageVersionAsset>: Returns the contents of an asset that is in
a package version.

=item *

C<GetPackageVersionReadme>: Gets the readme file or descriptive text
for a package version.

=item *

C<GetRepositoryEndpoint>: Returns the endpoint of a repository for a
specific package format. A repository has one endpoint for each package
format:

=over

=item *

C<npm>

=item *

C<pypi>

=item *

C<maven>

=back

=item *

C<GetRepositoryPermissionsPolicy>: Returns the resource policy that is
set on a repository.

=item *

C<ListDomains>: Returns a list of C<DomainSummary> objects. Each
returned C<DomainSummary> object contains information about a domain.

=item *

C<ListPackages>: Lists the packages in a repository.

=item *

C<ListPackageVersionAssets>: Lists the assets for a given package
version.

=item *

C<ListPackageVersionDependencies>: Returns a list of the direct
dependencies for a package version.

=item *

C<ListPackageVersions>: Returns a list of package versions for a
specified package in a repository.

=item *

C<ListRepositories>: Returns a list of repositories owned by the AWS
account that called this method.

=item *

C<ListRepositoriesInDomain>: Returns a list of the repositories in a
domain.

=item *

C<PutDomainPermissionsPolicy>: Attaches a resource policy to a domain.

=item *

C<PutRepositoryPermissionsPolicy>: Sets the resource policy on a
repository that specifies permissions to access it.

=item *

C<UpdatePackageVersionsStatus>: Updates the status of one or more
versions of a package.

=item *

C<UpdateRepository>: Updates the properties of a repository.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22>


=head1 METHODS

=head2 AssociateExternalConnection

=over

=item Domain => Str

=item ExternalConnection => Str

=item Repository => Str

=item [DomainOwner => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::AssociateExternalConnection>

Returns: a L<Paws::CodeArtifact::AssociateExternalConnectionResult> instance

Adds an existing external connection to a repository. One external
connection is allowed per repository.

A repository can have one or more upstream repositories, or an external
connection.


=head2 CopyPackageVersions

=over

=item DestinationRepository => Str

=item Domain => Str

=item Format => Str

=item Package => Str

=item SourceRepository => Str

=item [AllowOverwrite => Bool]

=item [DomainOwner => Str]

=item [IncludeFromUpstream => Bool]

=item [Namespace => Str]

=item [VersionRevisions => L<Paws::CodeArtifact::PackageVersionRevisionMap>]

=item [Versions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::CopyPackageVersions>

Returns: a L<Paws::CodeArtifact::CopyPackageVersionsResult> instance

Copies package versions from one repository to another repository in
the same domain.

You must specify C<versions> or C<versionRevisions>. You cannot specify
both.


=head2 CreateDomain

=over

=item Domain => Str

=item [EncryptionKey => Str]

=item [Tags => ArrayRef[L<Paws::CodeArtifact::Tag>]]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::CreateDomain>

Returns: a L<Paws::CodeArtifact::CreateDomainResult> instance

Creates a domain. CodeArtifact I<domains> make it easier to manage
multiple repositories across an organization. You can use a domain to
apply permissions across many repositories owned by different AWS
accounts. An asset is stored only once in a domain, even if it's in
multiple repositories.

Although you can have multiple domains, we recommend a single
production domain that contains all published artifacts so that your
development teams can find and share packages. You can use a second
pre-production domain to test changes to the production domain
configuration.


=head2 CreateRepository

=over

=item Domain => Str

=item Repository => Str

=item [Description => Str]

=item [DomainOwner => Str]

=item [Tags => ArrayRef[L<Paws::CodeArtifact::Tag>]]

=item [Upstreams => ArrayRef[L<Paws::CodeArtifact::UpstreamRepository>]]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::CreateRepository>

Returns: a L<Paws::CodeArtifact::CreateRepositoryResult> instance

Creates a repository.


=head2 DeleteDomain

=over

=item Domain => Str

=item [DomainOwner => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::DeleteDomain>

Returns: a L<Paws::CodeArtifact::DeleteDomainResult> instance

Deletes a domain. You cannot delete a domain that contains
repositories. If you want to delete a domain with repositories, first
delete its repositories.


=head2 DeleteDomainPermissionsPolicy

=over

=item Domain => Str

=item [DomainOwner => Str]

=item [PolicyRevision => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::DeleteDomainPermissionsPolicy>

Returns: a L<Paws::CodeArtifact::DeleteDomainPermissionsPolicyResult> instance

Deletes the resource policy set on a domain.


=head2 DeletePackageVersions

=over

=item Domain => Str

=item Format => Str

=item Package => Str

=item Repository => Str

=item Versions => ArrayRef[Str|Undef]

=item [DomainOwner => Str]

=item [ExpectedStatus => Str]

=item [Namespace => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::DeletePackageVersions>

Returns: a L<Paws::CodeArtifact::DeletePackageVersionsResult> instance

Deletes one or more versions of a package. A deleted package version
cannot be restored in your repository. If you want to remove a package
version from your repository and be able to restore it later, set its
status to C<Archived>. Archived packages cannot be downloaded from a
repository and don't show up with list package APIs (for example,
ListackageVersions
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html)),
but you can restore them using UpdatePackageVersionsStatus
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html).


=head2 DeleteRepository

=over

=item Domain => Str

=item Repository => Str

=item [DomainOwner => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::DeleteRepository>

Returns: a L<Paws::CodeArtifact::DeleteRepositoryResult> instance

Deletes a repository.


=head2 DeleteRepositoryPermissionsPolicy

=over

=item Domain => Str

=item Repository => Str

=item [DomainOwner => Str]

=item [PolicyRevision => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::DeleteRepositoryPermissionsPolicy>

Returns: a L<Paws::CodeArtifact::DeleteRepositoryPermissionsPolicyResult> instance

Deletes the resource policy that is set on a repository. After a
resource policy is deleted, the permissions allowed and denied by the
deleted policy are removed. The effect of deleting a resource policy
might not be immediate.

Use C<DeleteRepositoryPermissionsPolicy> with caution. After a policy
is deleted, AWS users, roles, and accounts lose permissions to perform
the repository actions granted by the deleted policy.


=head2 DescribeDomain

=over

=item Domain => Str

=item [DomainOwner => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::DescribeDomain>

Returns: a L<Paws::CodeArtifact::DescribeDomainResult> instance

Returns a DomainDescription
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html)
object that contains information about the requested domain.


=head2 DescribePackageVersion

=over

=item Domain => Str

=item Format => Str

=item Package => Str

=item PackageVersion => Str

=item Repository => Str

=item [DomainOwner => Str]

=item [Namespace => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::DescribePackageVersion>

Returns: a L<Paws::CodeArtifact::DescribePackageVersionResult> instance

Returns a PackageVersionDescription
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
object that contains information about the requested package version.


=head2 DescribeRepository

=over

=item Domain => Str

=item Repository => Str

=item [DomainOwner => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::DescribeRepository>

Returns: a L<Paws::CodeArtifact::DescribeRepositoryResult> instance

Returns a C<RepositoryDescription> object that contains detailed
information about the requested repository.


=head2 DisassociateExternalConnection

=over

=item Domain => Str

=item ExternalConnection => Str

=item Repository => Str

=item [DomainOwner => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::DisassociateExternalConnection>

Returns: a L<Paws::CodeArtifact::DisassociateExternalConnectionResult> instance

Removes an existing external connection from a repository.


=head2 DisposePackageVersions

=over

=item Domain => Str

=item Format => Str

=item Package => Str

=item Repository => Str

=item Versions => ArrayRef[Str|Undef]

=item [DomainOwner => Str]

=item [ExpectedStatus => Str]

=item [Namespace => Str]

=item [VersionRevisions => L<Paws::CodeArtifact::PackageVersionRevisionMap>]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::DisposePackageVersions>

Returns: a L<Paws::CodeArtifact::DisposePackageVersionsResult> instance

Deletes the assets in package versions and sets the package versions'
status to C<Disposed>. A disposed package version cannot be restored in
your repository because its assets are deleted.

To view all disposed package versions in a repository, use
ListPackageVersions
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html)
and set the status
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html#API_ListPackageVersions_RequestSyntax)
parameter to C<Disposed>.

To view information about a disposed package version, use
DescribePackageVersion
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DescribePackageVersion.html).


=head2 GetAuthorizationToken

=over

=item Domain => Str

=item [DomainOwner => Str]

=item [DurationSeconds => Int]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::GetAuthorizationToken>

Returns: a L<Paws::CodeArtifact::GetAuthorizationTokenResult> instance

Generates a temporary authorization token for accessing repositories in
the domain. This API requires the C<codeartifact:GetAuthorizationToken>
and C<sts:GetServiceBearerToken> permissions. For more information
about authorization tokens, see AWS CodeArtifact authentication and
tokens
(https://docs.aws.amazon.com/codeartifact/latest/ug/tokens-authentication.html).

CodeArtifact authorization tokens are valid for a period of 12 hours
when created with the C<login> command. You can call C<login>
periodically to refresh the token. When you create an authorization
token with the C<GetAuthorizationToken> API, you can set a custom
authorization period, up to a maximum of 12 hours, with the
C<durationSeconds> parameter.

The authorization period begins after C<login> or
C<GetAuthorizationToken> is called. If C<login> or
C<GetAuthorizationToken> is called while assuming a role, the token
lifetime is independent of the maximum session duration of the role.
For example, if you call C<sts assume-role> and specify a session
duration of 15 minutes, then generate a CodeArtifact authorization
token, the token will be valid for the full authorization period even
though this is longer than the 15-minute session duration.

See Using IAM Roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html)
for more information on controlling session duration.


=head2 GetDomainPermissionsPolicy

=over

=item Domain => Str

=item [DomainOwner => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::GetDomainPermissionsPolicy>

Returns: a L<Paws::CodeArtifact::GetDomainPermissionsPolicyResult> instance

Returns the resource policy attached to the specified domain.

The policy is a resource-based policy, not an identity-based policy.
For more information, see Identity-based policies and resource-based
policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
in the I<AWS Identity and Access Management User Guide>.


=head2 GetPackageVersionAsset

=over

=item Asset => Str

=item Domain => Str

=item Format => Str

=item Package => Str

=item PackageVersion => Str

=item Repository => Str

=item [DomainOwner => Str]

=item [Namespace => Str]

=item [PackageVersionRevision => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::GetPackageVersionAsset>

Returns: a L<Paws::CodeArtifact::GetPackageVersionAssetResult> instance

Returns an asset (or file) that is in a package. For example, for a
Maven package version, use C<GetPackageVersionAsset> to download a
C<JAR> file, a C<POM> file, or any other assets in the package version.


=head2 GetPackageVersionReadme

=over

=item Domain => Str

=item Format => Str

=item Package => Str

=item PackageVersion => Str

=item Repository => Str

=item [DomainOwner => Str]

=item [Namespace => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::GetPackageVersionReadme>

Returns: a L<Paws::CodeArtifact::GetPackageVersionReadmeResult> instance

Gets the readme file or descriptive text for a package version. For
packages that do not contain a readme file, CodeArtifact extracts a
description from a metadata file. For example, from the
C<E<lt>descriptionE<gt>> element in the C<pom.xml> file of a Maven
package.

The returned text might contain formatting. For example, it might
contain formatting for Markdown or reStructuredText.


=head2 GetRepositoryEndpoint

=over

=item Domain => Str

=item Format => Str

=item Repository => Str

=item [DomainOwner => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::GetRepositoryEndpoint>

Returns: a L<Paws::CodeArtifact::GetRepositoryEndpointResult> instance

Returns the endpoint of a repository for a specific package format. A
repository has one endpoint for each package format:

=over

=item *

C<npm>

=item *

C<pypi>

=item *

C<maven>

=back



=head2 GetRepositoryPermissionsPolicy

=over

=item Domain => Str

=item Repository => Str

=item [DomainOwner => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::GetRepositoryPermissionsPolicy>

Returns: a L<Paws::CodeArtifact::GetRepositoryPermissionsPolicyResult> instance

Returns the resource policy that is set on a repository.


=head2 ListDomains

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::ListDomains>

Returns: a L<Paws::CodeArtifact::ListDomainsResult> instance

Returns a list of DomainSummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
objects for all domains owned by the AWS account that makes this call.
Each returned C<DomainSummary> object contains information about a
domain.


=head2 ListPackages

=over

=item Domain => Str

=item Repository => Str

=item [DomainOwner => Str]

=item [Format => Str]

=item [MaxResults => Int]

=item [Namespace => Str]

=item [NextToken => Str]

=item [PackagePrefix => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::ListPackages>

Returns: a L<Paws::CodeArtifact::ListPackagesResult> instance

Returns a list of PackageSummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html)
objects for packages in a repository that match the request parameters.


=head2 ListPackageVersionAssets

=over

=item Domain => Str

=item Format => Str

=item Package => Str

=item PackageVersion => Str

=item Repository => Str

=item [DomainOwner => Str]

=item [MaxResults => Int]

=item [Namespace => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::ListPackageVersionAssets>

Returns: a L<Paws::CodeArtifact::ListPackageVersionAssetsResult> instance

Returns a list of AssetSummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html)
objects for assets in a package version.


=head2 ListPackageVersionDependencies

=over

=item Domain => Str

=item Format => Str

=item Package => Str

=item PackageVersion => Str

=item Repository => Str

=item [DomainOwner => Str]

=item [Namespace => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::ListPackageVersionDependencies>

Returns: a L<Paws::CodeArtifact::ListPackageVersionDependenciesResult> instance

Returns the direct dependencies for a package version. The dependencies
are returned as PackageDependency
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html)
objects. CodeArtifact extracts the dependencies for a package version
from the metadata file for the package format (for example, the
C<package.json> file for npm packages and the C<pom.xml> file for
Maven). Any package version dependencies that are not listed in the
configuration file are not returned.


=head2 ListPackageVersions

=over

=item Domain => Str

=item Format => Str

=item Package => Str

=item Repository => Str

=item [DomainOwner => Str]

=item [MaxResults => Int]

=item [Namespace => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::ListPackageVersions>

Returns: a L<Paws::CodeArtifact::ListPackageVersionsResult> instance

Returns a list of PackageVersionSummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html)
objects for package versions in a repository that match the request
parameters.


=head2 ListRepositories

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RepositoryPrefix => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::ListRepositories>

Returns: a L<Paws::CodeArtifact::ListRepositoriesResult> instance

Returns a list of RepositorySummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html)
objects. Each C<RepositorySummary> contains information about a
repository in the specified AWS account and that matches the input
parameters.


=head2 ListRepositoriesInDomain

=over

=item Domain => Str

=item [AdministratorAccount => Str]

=item [DomainOwner => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RepositoryPrefix => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::ListRepositoriesInDomain>

Returns: a L<Paws::CodeArtifact::ListRepositoriesInDomainResult> instance

Returns a list of RepositorySummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html)
objects. Each C<RepositorySummary> contains information about a
repository in the specified domain and that matches the input
parameters.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CodeArtifact::ListTagsForResource>

Returns: a L<Paws::CodeArtifact::ListTagsForResourceResult> instance

Gets information about AWS tags for a specified Amazon Resource Name
(ARN) in AWS CodeArtifact.


=head2 PutDomainPermissionsPolicy

=over

=item Domain => Str

=item PolicyDocument => Str

=item [DomainOwner => Str]

=item [PolicyRevision => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::PutDomainPermissionsPolicy>

Returns: a L<Paws::CodeArtifact::PutDomainPermissionsPolicyResult> instance

Sets a resource policy on a domain that specifies permissions to access
it.

When you call C<PutDomainPermissionsPolicy>, the resource policy on the
domain is ignored when evaluting permissions. This ensures that the
owner of a domain cannot lock themselves out of the domain, which would
prevent them from being able to update the resource policy.


=head2 PutRepositoryPermissionsPolicy

=over

=item Domain => Str

=item PolicyDocument => Str

=item Repository => Str

=item [DomainOwner => Str]

=item [PolicyRevision => Str]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::PutRepositoryPermissionsPolicy>

Returns: a L<Paws::CodeArtifact::PutRepositoryPermissionsPolicyResult> instance

Sets the resource policy on a repository that specifies permissions to
access it.

When you call C<PutRepositoryPermissionsPolicy>, the resource policy on
the repository is ignored when evaluting permissions. This ensures that
the owner of a repository cannot lock themselves out of the repository,
which would prevent them from being able to update the resource policy.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::CodeArtifact::Tag>]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::TagResource>

Returns: a L<Paws::CodeArtifact::TagResourceResult> instance

Adds or updates tags for a resource in AWS CodeArtifact.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::UntagResource>

Returns: a L<Paws::CodeArtifact::UntagResourceResult> instance

Removes tags from a resource in AWS CodeArtifact.


=head2 UpdatePackageVersionsStatus

=over

=item Domain => Str

=item Format => Str

=item Package => Str

=item Repository => Str

=item TargetStatus => Str

=item Versions => ArrayRef[Str|Undef]

=item [DomainOwner => Str]

=item [ExpectedStatus => Str]

=item [Namespace => Str]

=item [VersionRevisions => L<Paws::CodeArtifact::PackageVersionRevisionMap>]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::UpdatePackageVersionsStatus>

Returns: a L<Paws::CodeArtifact::UpdatePackageVersionsStatusResult> instance

Updates the status of one or more versions of a package.


=head2 UpdateRepository

=over

=item Domain => Str

=item Repository => Str

=item [Description => Str]

=item [DomainOwner => Str]

=item [Upstreams => ArrayRef[L<Paws::CodeArtifact::UpstreamRepository>]]


=back

Each argument is described in detail in: L<Paws::CodeArtifact::UpdateRepository>

Returns: a L<Paws::CodeArtifact::UpdateRepositoryResult> instance

Update the properties of a repository.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDomains(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDomains([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - domains, passing the object as the first parameter, and the string 'domains' as the second parameter 

If not, it will return a a L<Paws::CodeArtifact::ListDomainsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPackages(sub { },Domain => Str, Repository => Str, [DomainOwner => Str, Format => Str, MaxResults => Int, Namespace => Str, NextToken => Str, PackagePrefix => Str])

=head2 ListAllPackages(Domain => Str, Repository => Str, [DomainOwner => Str, Format => Str, MaxResults => Int, Namespace => Str, NextToken => Str, PackagePrefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - packages, passing the object as the first parameter, and the string 'packages' as the second parameter 

If not, it will return a a L<Paws::CodeArtifact::ListPackagesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPackageVersionAssets(sub { },Domain => Str, Format => Str, Package => Str, PackageVersion => Str, Repository => Str, [DomainOwner => Str, MaxResults => Int, Namespace => Str, NextToken => Str])

=head2 ListAllPackageVersionAssets(Domain => Str, Format => Str, Package => Str, PackageVersion => Str, Repository => Str, [DomainOwner => Str, MaxResults => Int, Namespace => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assets, passing the object as the first parameter, and the string 'assets' as the second parameter 

If not, it will return a a L<Paws::CodeArtifact::ListPackageVersionAssetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPackageVersions(sub { },Domain => Str, Format => Str, Package => Str, Repository => Str, [DomainOwner => Str, MaxResults => Int, Namespace => Str, NextToken => Str, SortBy => Str, Status => Str])

=head2 ListAllPackageVersions(Domain => Str, Format => Str, Package => Str, Repository => Str, [DomainOwner => Str, MaxResults => Int, Namespace => Str, NextToken => Str, SortBy => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - versions, passing the object as the first parameter, and the string 'versions' as the second parameter 

If not, it will return a a L<Paws::CodeArtifact::ListPackageVersionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRepositories(sub { },[MaxResults => Int, NextToken => Str, RepositoryPrefix => Str])

=head2 ListAllRepositories([MaxResults => Int, NextToken => Str, RepositoryPrefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - repositories, passing the object as the first parameter, and the string 'repositories' as the second parameter 

If not, it will return a a L<Paws::CodeArtifact::ListRepositoriesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRepositoriesInDomain(sub { },Domain => Str, [AdministratorAccount => Str, DomainOwner => Str, MaxResults => Int, NextToken => Str, RepositoryPrefix => Str])

=head2 ListAllRepositoriesInDomain(Domain => Str, [AdministratorAccount => Str, DomainOwner => Str, MaxResults => Int, NextToken => Str, RepositoryPrefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - repositories, passing the object as the first parameter, and the string 'repositories' as the second parameter 

If not, it will return a a L<Paws::CodeArtifact::ListRepositoriesInDomainResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

