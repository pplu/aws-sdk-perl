
package Paws::Macie2::DescribeBuckets;
  use Moose;
  has Criteria => (is => 'ro', isa => 'Paws::Macie2::BucketCriteria', traits => ['NameInRequest'], request_name => 'criteria');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortCriteria => (is => 'ro', isa => 'Paws::Macie2::BucketSortCriteria', traits => ['NameInRequest'], request_name => 'sortCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBuckets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasources/s3');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::DescribeBucketsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::DescribeBuckets - Arguments for method DescribeBuckets on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBuckets on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method DescribeBuckets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBuckets.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $DescribeBucketsResponse = $macie2->DescribeBuckets(
      Criteria => {
        'My__string' => {
          Eq     => [ 'My__string', ... ],    # OPTIONAL
          Gt     => 1,                        # OPTIONAL
          Gte    => 1,                        # OPTIONAL
          Lt     => 1,                        # OPTIONAL
          Lte    => 1,                        # OPTIONAL
          Neq    => [ 'My__string', ... ],    # OPTIONAL
          Prefix => 'My__string',
        },
      },    # OPTIONAL
      MaxResults   => 1,               # OPTIONAL
      NextToken    => 'My__string',    # OPTIONAL
      SortCriteria => {
        AttributeName => 'My__string',
        OrderBy       => 'ASC',          # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Buckets   = $DescribeBucketsResponse->Buckets;
    my $NextToken = $DescribeBucketsResponse->NextToken;

    # Returns a L<Paws::Macie2::DescribeBucketsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/DescribeBuckets>

=head1 ATTRIBUTES


=head2 Criteria => L<Paws::Macie2::BucketCriteria>

The criteria to use to filter the query results.



=head2 MaxResults => Int

The maximum number of items to include in each page of the response.
The default value is 50.



=head2 NextToken => Str

The nextToken string that specifies which page of results to return in
a paginated response.



=head2 SortCriteria => L<Paws::Macie2::BucketSortCriteria>

The criteria to use to sort the query results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBuckets in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

