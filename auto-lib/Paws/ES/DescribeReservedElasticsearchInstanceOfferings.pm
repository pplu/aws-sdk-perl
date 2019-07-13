
package Paws::ES::DescribeReservedElasticsearchInstanceOfferings;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ReservedElasticsearchInstanceOfferingId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'offeringId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedElasticsearchInstanceOfferings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/reservedInstanceOfferings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::DescribeReservedElasticsearchInstanceOfferingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeReservedElasticsearchInstanceOfferings - Arguments for method DescribeReservedElasticsearchInstanceOfferings on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedElasticsearchInstanceOfferings on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method DescribeReservedElasticsearchInstanceOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedElasticsearchInstanceOfferings.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $DescribeReservedElasticsearchInstanceOfferingsResponse =
      $es->DescribeReservedElasticsearchInstanceOfferings(
      MaxResults                              => 1,                # OPTIONAL
      NextToken                               => 'MyNextToken',    # OPTIONAL
      ReservedElasticsearchInstanceOfferingId => 'MyGUID',         # OPTIONAL
      );

    # Results:
    my $NextToken =
      $DescribeReservedElasticsearchInstanceOfferingsResponse->NextToken;
    my $ReservedElasticsearchInstanceOfferings =
      $DescribeReservedElasticsearchInstanceOfferingsResponse
      ->ReservedElasticsearchInstanceOfferings;

# Returns a L<Paws::ES::DescribeReservedElasticsearchInstanceOfferingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/DescribeReservedElasticsearchInstanceOfferings>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Set this value to limit the number of results returned. If not
specified, defaults to 100.



=head2 NextToken => Str

NextToken should be sent in case if earlier API call produced result
containing NextToken. It is used for pagination.



=head2 ReservedElasticsearchInstanceOfferingId => Str

The offering identifier filter value. Use this parameter to show only
the available offering that matches the specified reservation
identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedElasticsearchInstanceOfferings in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

