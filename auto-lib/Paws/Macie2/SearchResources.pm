
package Paws::Macie2::SearchResources;
  use Moose;
  has BucketCriteria => (is => 'ro', isa => 'Paws::Macie2::SearchResourcesBucketCriteria', traits => ['NameInRequest'], request_name => 'bucketCriteria');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortCriteria => (is => 'ro', isa => 'Paws::Macie2::SearchResourcesSortCriteria', traits => ['NameInRequest'], request_name => 'sortCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasources/search-resources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::SearchResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::SearchResources - Arguments for method SearchResources on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchResources on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method SearchResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchResources.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $SearchResourcesResponse = $macie2->SearchResources(
      BucketCriteria => {
        Excludes => {
          And => [
            {
              SimpleCriterion => {
                Comparator => 'EQ',                 # values: EQ, NE; OPTIONAL
                Key        => 'ACCOUNT_ID'
                , # values: ACCOUNT_ID, S3_BUCKET_NAME, S3_BUCKET_EFFECTIVE_PERMISSION, S3_BUCKET_SHARED_ACCESS; OPTIONAL
                Values => [ 'My__string', ... ],    # OPTIONAL
              },    # OPTIONAL
              TagCriterion => {
                Comparator => 'EQ',    # values: EQ, NE; OPTIONAL
                TagValues  => [
                  {
                    Key   => 'My__string',
                    Value => 'My__string',
                  },
                  ...
                ],                     # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        Includes => {
          And => [
            {
              SimpleCriterion => {
                Comparator => 'EQ',                 # values: EQ, NE; OPTIONAL
                Key        => 'ACCOUNT_ID'
                , # values: ACCOUNT_ID, S3_BUCKET_NAME, S3_BUCKET_EFFECTIVE_PERMISSION, S3_BUCKET_SHARED_ACCESS; OPTIONAL
                Values => [ 'My__string', ... ],    # OPTIONAL
              },    # OPTIONAL
              TagCriterion => {
                Comparator => 'EQ',    # values: EQ, NE; OPTIONAL
                TagValues  => [
                  {
                    Key   => 'My__string',
                    Value => 'My__string',
                  },
                  ...
                ],                     # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      MaxResults   => 1,               # OPTIONAL
      NextToken    => 'My__string',    # OPTIONAL
      SortCriteria => {
        AttributeName => 'ACCOUNT_ID'
        , # values: ACCOUNT_ID, RESOURCE_NAME, S3_CLASSIFIABLE_OBJECT_COUNT, S3_CLASSIFIABLE_SIZE_IN_BYTES; OPTIONAL
        OrderBy => 'ASC',    # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $MatchingResources = $SearchResourcesResponse->MatchingResources;
    my $NextToken         = $SearchResourcesResponse->NextToken;

    # Returns a L<Paws::Macie2::SearchResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/SearchResources>

=head1 ATTRIBUTES


=head2 BucketCriteria => L<Paws::Macie2::SearchResourcesBucketCriteria>

The filter conditions that determine which S3 buckets to include or
exclude from the query results.



=head2 MaxResults => Int

The maximum number of items to include in each page of the response.
The default value is 50.



=head2 NextToken => Str

The nextToken string that specifies which page of results to return in
a paginated response.



=head2 SortCriteria => L<Paws::Macie2::SearchResourcesSortCriteria>

The criteria to use to sort the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchResources in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

