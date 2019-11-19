
package Paws::IoT::GetStatistics;
  use Moose;
  has AggregationField => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationField');
  has IndexName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexName');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString', required => 1);
  has QueryVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/indices/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetStatisticsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetStatistics - Arguments for method GetStatistics on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStatistics on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStatistics.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetStatisticsResponse = $iot->GetStatistics(
      QueryString      => 'MyQueryString',
      AggregationField => 'MyAggregationField',    # OPTIONAL
      IndexName        => 'MyIndexName',           # OPTIONAL
      QueryVersion     => 'MyQueryVersion',        # OPTIONAL
    );

    # Results:
    my $Statistics = $GetStatisticsResponse->Statistics;

    # Returns a L<Paws::IoT::GetStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetStatistics>

=head1 ATTRIBUTES


=head2 AggregationField => Str

The aggregation field name. Currently not supported.



=head2 IndexName => Str

The name of the index to search. The default value is C<AWS_Things>.



=head2 B<REQUIRED> QueryString => Str

The query used to search. You can specify "*" for the query string to
get the count of all indexed things in your AWS account.



=head2 QueryVersion => Str

The version of the query used to search.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStatistics in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

