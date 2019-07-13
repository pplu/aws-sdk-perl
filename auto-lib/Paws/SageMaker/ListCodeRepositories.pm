
package Paws::SageMaker::ListCodeRepositories;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCodeRepositories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListCodeRepositoriesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListCodeRepositories - Arguments for method ListCodeRepositories on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCodeRepositories on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListCodeRepositories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCodeRepositories.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListCodeRepositoriesOutput = $api . sagemaker->ListCodeRepositories(
      CreationTimeAfter      => '1970-01-01T01:00:00',             # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',             # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',             # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',             # OPTIONAL
      MaxResults             => 1,                                 # OPTIONAL
      NameContains           => 'MyCodeRepositoryNameContains',    # OPTIONAL
      NextToken              => 'MyNextToken',                     # OPTIONAL
      SortBy                 => 'Name',                            # OPTIONAL
      SortOrder              => 'Ascending',                       # OPTIONAL
    );

    # Results:
    my $CodeRepositorySummaryList =
      $ListCodeRepositoriesOutput->CodeRepositorySummaryList;
    my $NextToken = $ListCodeRepositoriesOutput->NextToken;

    # Returns a L<Paws::SageMaker::ListCodeRepositoriesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListCodeRepositories>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only Git repositories that were created after the
specified time.



=head2 CreationTimeBefore => Str

A filter that returns only Git repositories that were created before
the specified time.



=head2 LastModifiedTimeAfter => Str

A filter that returns only Git repositories that were last modified
after the specified time.



=head2 LastModifiedTimeBefore => Str

A filter that returns only Git repositories that were last modified
before the specified time.



=head2 MaxResults => Int

The maximum number of Git repositories to return in the response.



=head2 NameContains => Str

A string in the Git repositories name. This filter returns only
repositories whose name contains the specified string.



=head2 NextToken => Str

If the result of a C<ListCodeRepositoriesOutput> request was truncated,
the response includes a C<NextToken>. To get the next set of Git
repositories, use the token in the next request.



=head2 SortBy => Str

The field to sort results by. The default is C<Name>.

Valid values are: C<"Name">, C<"CreationTime">, C<"LastModifiedTime">

=head2 SortOrder => Str

The sort order for results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCodeRepositories in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

