
package Paws::CodeCommit::ListRepositories;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Order => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'order' );
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRepositories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::ListRepositoriesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListRepositories - Arguments for method ListRepositories on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRepositories on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method ListRepositories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRepositories.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $ListRepositoriesOutput = $codecommit->ListRepositories(
      NextToken => 'MyNextToken',       # OPTIONAL
      Order     => 'ascending',         # OPTIONAL
      SortBy    => 'repositoryName',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListRepositoriesOutput->NextToken;
    my $Repositories = $ListRepositoriesOutput->Repositories;

    # Returns a L<Paws::CodeCommit::ListRepositoriesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/ListRepositories>

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that allows the operation to batch the results of
the operation. Batch sizes are 1,000 for list repository operations.
When the client sends the token back to AWS CodeCommit, another page of
1,000 records is retrieved.



=head2 Order => Str

The order in which to sort the results of a list repositories
operation.

Valid values are: C<"ascending">, C<"descending">

=head2 SortBy => Str

The criteria used to sort the results of a list repositories operation.

Valid values are: C<"repositoryName">, C<"lastModifiedDate">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRepositories in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

