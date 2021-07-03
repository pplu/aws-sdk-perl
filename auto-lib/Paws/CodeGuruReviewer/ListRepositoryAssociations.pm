
package Paws::CodeGuruReviewer::ListRepositoryAssociations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'Name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has Owners => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'Owner');
  has ProviderTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'ProviderType');
  has States => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'State');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRepositoryAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruReviewer::ListRepositoryAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::ListRepositoryAssociations - Arguments for method ListRepositoryAssociations on L<Paws::CodeGuruReviewer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRepositoryAssociations on the
L<Amazon CodeGuru Reviewer|Paws::CodeGuruReviewer> service. Use the attributes of this class
as arguments to method ListRepositoryAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRepositoryAssociations.

=head1 SYNOPSIS

    my $codeguru-reviewer = Paws->service('CodeGuruReviewer');
    my $ListRepositoryAssociationsResponse =
      $codeguru -reviewer->ListRepositoryAssociations(
      MaxResults => 1,    # OPTIONAL
      Names      => [
        'MyName', ...     # min: 1, max: 100
      ],    # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
      Owners    => [
        'MyOwner', ...               # min: 1, max: 100
      ],    # OPTIONAL
      ProviderTypes => [
        'CodeCommit', ...    # values: CodeCommit, GitHub
      ],    # OPTIONAL
      States => [
        'Associated',
        ...    # values: Associated, Associating, Failed, Disassociating
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListRepositoryAssociationsResponse->NextToken;
    my $RepositoryAssociationSummaries =
      $ListRepositoryAssociationsResponse->RepositoryAssociationSummaries;

# Returns a L<Paws::CodeGuruReviewer::ListRepositoryAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/ListRepositoryAssociations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of repository association results returned by
C<ListRepositoryAssociations> in paginated output. When this parameter
is used, C<ListRepositoryAssociations> only returns C<maxResults>
results in a single page along with a C<nextToken> response element.
The remaining results of the initial request can be seen by sending
another C<ListRepositoryAssociations> request with the returned
C<nextToken> value. This value can be between 1 and 100. If this
parameter is not used, then C<ListRepositoryAssociations> returns up to
100 results and a C<nextToken> value if applicable.



=head2 Names => ArrayRef[Str|Undef]

List of names to use as a filter.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListRepositoryAssociations> request where C<maxResults> was used and
the results exceeded the value of that parameter. Pagination continues
from the end of the previous results that returned the C<nextToken>
value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 Owners => ArrayRef[Str|Undef]

List of owners to use as a filter. For AWS CodeCommit, the owner is the
AWS account id. For GitHub, it is the GitHub account name.



=head2 ProviderTypes => ArrayRef[Str|Undef]

List of provider types to use as a filter.



=head2 States => ArrayRef[Str|Undef]

List of states to use as a filter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRepositoryAssociations in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

