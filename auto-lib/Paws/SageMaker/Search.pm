
package Paws::SageMaker::Search;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Resource => (is => 'ro', isa => 'Str', required => 1);
  has SearchExpression => (is => 'ro', isa => 'Paws::SageMaker::SearchExpression');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Search');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::SearchResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::Search - Arguments for method Search on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Search on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method Search.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Search.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $SearchResponse = $api . sagemaker->Search(
      Resource         => 'TrainingJob',
      MaxResults       => 1,                # OPTIONAL
      NextToken        => 'MyNextToken',    # OPTIONAL
      SearchExpression => {
        Filters => [
          {
            Name     => 'MyResourcePropertyName',    # min: 1, max: 255
            Operator => 'Equals'
            , # values: Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains; OPTIONAL
            Value => 'MyFilterValue',    # min: 1, max: 1024; OPTIONAL
          },
          ...
        ],                               # min: 1, max: 20
        NestedFilters => [
          {
            Filters => [
              {
                Name     => 'MyResourcePropertyName',    # min: 1, max: 255
                Operator => 'Equals'
                , # values: Equals, NotEquals, GreaterThan, GreaterThanOrEqualTo, LessThan, LessThanOrEqualTo, Contains; OPTIONAL
                Value => 'MyFilterValue',    # min: 1, max: 1024; OPTIONAL
              },
              ...
            ],                               # min: 1, max: 20
            NestedPropertyName => 'MyResourcePropertyName',   # min: 1, max: 255

          },
          ...
        ],    # min: 1, max: 20; OPTIONAL
        Operator => 'And',                           # values: And, Or; OPTIONAL
        SubExpressions => [ <SearchExpression>, ... ]
        ,                                            # min: 1, max: 20; OPTIONAL
      },    # OPTIONAL
      SortBy    => 'MyResourcePropertyName',    # OPTIONAL
      SortOrder => 'Ascending',                 # OPTIONAL
    );

    # Results:
    my $NextToken = $SearchResponse->NextToken;
    my $Results   = $SearchResponse->Results;

    # Returns a L<Paws::SageMaker::SearchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/Search>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a C<SearchResponse>.



=head2 NextToken => Str

If more than C<MaxResults> resource objects match the specified
C<SearchExpression>, the C<SearchResponse> includes a C<NextToken>. The
C<NextToken> can be passed to the next C<SearchRequest> to continue
retrieving results for the specified C<SearchExpression> and C<Sort>
parameters.



=head2 B<REQUIRED> Resource => Str

The name of the Amazon SageMaker resource to search for. Currently, the
only valid C<Resource> value is C<TrainingJob>.

Valid values are: C<"TrainingJob">

=head2 SearchExpression => L<Paws::SageMaker::SearchExpression>

A Boolean conditional statement. Resource objects must satisfy this
condition to be included in search results. You must provide at least
one subexpression, filter, or nested filter. The maximum number of
recursive C<SubExpressions>, C<NestedFilters>, and C<Filters> that can
be included in a C<SearchExpression> object is 50.



=head2 SortBy => Str

The name of the resource property used to sort the C<SearchResults>.
The default is C<LastModifiedTime>.



=head2 SortOrder => Str

How C<SearchResults> are ordered. Valid values are C<Ascending> or
C<Descending>. The default is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Search in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

