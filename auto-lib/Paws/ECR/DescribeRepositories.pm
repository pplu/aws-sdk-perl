
package Paws::ECR::DescribeRepositories;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'repositoryNames' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRepositories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::DescribeRepositoriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeRepositories - Arguments for method DescribeRepositories on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRepositories on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method DescribeRepositories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRepositories.

=head1 SYNOPSIS

    my $ecr = Paws->service('ECR');
   # To describe all repositories in the current account
   # The following example obtains a list and description of all repositories in
   # the default registry to which the current user has access.
    my $DescribeRepositoriesResponse = $ecr->DescribeRepositories();

    # Results:
    my $repositories = $DescribeRepositoriesResponse->repositories;

    # Returns a L<Paws::ECR::DescribeRepositoriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecr/DescribeRepositories>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of repository results returned by
C<DescribeRepositories> in paginated output. When this parameter is
used, C<DescribeRepositories> only returns C<maxResults> results in a
single page along with a C<nextToken> response element. The remaining
results of the initial request can be seen by sending another
C<DescribeRepositories> request with the returned C<nextToken> value.
This value can be between 1 and 1000. If this parameter is not used,
then C<DescribeRepositories> returns up to 100 results and a
C<nextToken> value, if applicable. This option cannot be used when you
specify repositories with C<repositoryNames>.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<DescribeRepositories> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.
This value is C<null> when there are no more results to return. This
option cannot be used when you specify repositories with
C<repositoryNames>.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repositories to be described. If you do not specify a registry, the
default registry is assumed.



=head2 RepositoryNames => ArrayRef[Str|Undef]

A list of repositories to describe. If this parameter is omitted, then
all repositories in a registry are described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRepositories in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

