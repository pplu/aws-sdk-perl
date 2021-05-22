
package Paws::CodeArtifact::ListRepositoriesInDomain;
  use Moose;
  has AdministratorAccount => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'administrator-account');
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has RepositoryPrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository-prefix');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRepositoriesInDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/domain/repositories');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::ListRepositoriesInDomainResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListRepositoriesInDomain - Arguments for method ListRepositoriesInDomain on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRepositoriesInDomain on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method ListRepositoriesInDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRepositoriesInDomain.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $ListRepositoriesInDomainResult =
      $codeartifact->ListRepositoriesInDomain(
      Domain               => 'MyDomainName',
      AdministratorAccount => 'MyAccountId',          # OPTIONAL
      DomainOwner          => 'MyAccountId',          # OPTIONAL
      MaxResults           => 1,                      # OPTIONAL
      NextToken            => 'MyPaginationToken',    # OPTIONAL
      RepositoryPrefix     => 'MyRepositoryName',     # OPTIONAL
      );

    # Results:
    my $NextToken    = $ListRepositoriesInDomainResult->NextToken;
    my $Repositories = $ListRepositoriesInDomainResult->Repositories;

    # Returns a L<Paws::CodeArtifact::ListRepositoriesInDomainResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/ListRepositoriesInDomain>

=head1 ATTRIBUTES


=head2 AdministratorAccount => Str

Filter the list of repositories to only include those that are managed
by the AWS account ID.



=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the returned list of repositories.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 RepositoryPrefix => Str

A prefix used to filter returned repositories. Only repositories with
names that start with C<repositoryPrefix> are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRepositoriesInDomain in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

