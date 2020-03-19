
package Paws::Kendra::Query;
  use Moose;
  has AttributeFilter => (is => 'ro', isa => 'Paws::Kendra::AttributeFilter');
  has Facets => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Facet]');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has PageNumber => (is => 'ro', isa => 'Int');
  has PageSize => (is => 'ro', isa => 'Int');
  has QueryResultTypeFilter => (is => 'ro', isa => 'Str');
  has QueryText => (is => 'ro', isa => 'Str', required => 1);
  has RequestedDocumentAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Query');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::QueryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::Query - Arguments for method Query on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Query on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method Query.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Query.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $QueryResult = $kendra->Query(
      IndexId         => 'MyIndexId',
      QueryText       => 'MyQueryText',
      AttributeFilter => {
        AndAllFilters => [ <AttributeFilter>, ... ],  # min: 1, max: 5; OPTIONAL
        ContainsAll => {
          Key   => 'MyDocumentAttributeKey',          # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # min: 1, max: 5; OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        ContainsAny => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # min: 1, max: 5; OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        EqualsTo => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # min: 1, max: 5; OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        GreaterThan => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # min: 1, max: 5; OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        GreaterThanOrEquals => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # min: 1, max: 5; OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        LessThan => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # min: 1, max: 5; OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        LessThanOrEquals => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # min: 1, max: 5; OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        NotFilter    => <AttributeFilter>,
        OrAllFilters => [ <AttributeFilter>, ... ],   # min: 1, max: 5; OPTIONAL
      },    # OPTIONAL
      Facets => [
        {
          DocumentAttributeKey => 'MyDocumentAttributeKey',   # min: 1, max: 200
        },
        ...
      ],                                                      # OPTIONAL
      PageNumber                  => 1,                       # OPTIONAL
      PageSize                    => 1,                       # OPTIONAL
      QueryResultTypeFilter       => 'DOCUMENT',              # OPTIONAL
      RequestedDocumentAttributes => [
        'MyDocumentAttributeKey', ...                         # min: 1, max: 200
      ],                                                      # OPTIONAL
    );

    # Results:
    my $FacetResults         = $QueryResult->FacetResults;
    my $QueryId              = $QueryResult->QueryId;
    my $ResultItems          = $QueryResult->ResultItems;
    my $TotalNumberOfResults = $QueryResult->TotalNumberOfResults;

    # Returns a L<Paws::Kendra::QueryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/Query>

=head1 ATTRIBUTES


=head2 AttributeFilter => L<Paws::Kendra::AttributeFilter>

Enables filtered searches based on document attributes. You can only
provide one attribute filter; however, the C<AndAllFilters>,
C<NotFilter>, and C<OrAllFilters> parameters contain a list of other
filters.

The C<AttributeFilter> parameter enables you to create a set of
filtering rules that a document must satisfy to be included in the
query results.



=head2 Facets => ArrayRef[L<Paws::Kendra::Facet>]

An array of documents attributes. Amazon Kendra returns a count for
each attribute key specified. You can use this information to help
narrow the search for your user.



=head2 B<REQUIRED> IndexId => Str

The unique identifier of the index to search. The identifier is
returned in the response from the operation.



=head2 PageNumber => Int

Query results are returned in pages the size of the C<PageSize>
parameter. By default, Amazon Kendra returns the first page of results.
Use this parameter to get result pages after the first one.



=head2 PageSize => Int

Sets the number of results that are returned in each page of results.
The default page size is 100.



=head2 QueryResultTypeFilter => Str

Sets the type of query. Only results for the specified query type are
returned.

Valid values are: C<"DOCUMENT">, C<"QUESTION_ANSWER">, C<"ANSWER">

=head2 B<REQUIRED> QueryText => Str

The text to search for.



=head2 RequestedDocumentAttributes => ArrayRef[Str|Undef]

An array of document attributes to include in the response. No other
document attributes are included in the response. By default all
document attributes are included in the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Query in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

