package Paws::PerformanceInsights;
  use Moose;
  sub service { 'pi' }
  sub signing_name { 'pi' }
  sub version { '2018-02-27' }
  sub target_prefix { 'PerformanceInsightsv20180227' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub DescribeDimensionKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::DescribeDimensionKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PerformanceInsights::GetResourceMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DescribeDimensionKeys GetResourceMetrics / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights - Perl Interface to AWS AWS Performance Insights

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PerformanceInsights');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Performance Insights enables you to monitor and explore different
dimensions of database load based on data captured from a running RDS
instance. The guide provides detailed information about Performance
Insights data types, parameters and errors. For more information about
Performance Insights capabilities see Using Amazon RDS Performance
Insights
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
in the I<Amazon RDS User Guide>.

The AWS Performance Insights API provides visibility into the
performance of your RDS instance, when Performance Insights is enabled
for supported engine types. While Amazon CloudWatch provides the
authoritative source for AWS service vended monitoring metrics, AWS
Performance Insights offers a domain-specific view of database load
measured as Average Active Sessions and provided to API consumers as a
2-dimensional time-series dataset. The time dimension of the data
provides DB load data for each time point in the queried time range,
and each time point decomposes overall load in relation to the
requested dimensions, such as SQL, Wait-event, User or Host, measured
at that time point.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27>


=head1 METHODS

=head2 DescribeDimensionKeys

=over

=item EndTime => Str

=item GroupBy => L<Paws::PerformanceInsights::DimensionGroup>

=item Identifier => Str

=item Metric => Str

=item ServiceType => Str

=item StartTime => Str

=item [Filter => L<Paws::PerformanceInsights::MetricQueryFilterMap>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PartitionBy => L<Paws::PerformanceInsights::DimensionGroup>]

=item [PeriodInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::DescribeDimensionKeys>

Returns: a L<Paws::PerformanceInsights::DescribeDimensionKeysResponse> instance

For a specific time period, retrieve the top C<N> dimension keys for a
metric.


=head2 GetResourceMetrics

=over

=item EndTime => Str

=item Identifier => Str

=item MetricQueries => ArrayRef[L<Paws::PerformanceInsights::MetricQuery>]

=item ServiceType => Str

=item StartTime => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PeriodInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::PerformanceInsights::GetResourceMetrics>

Returns: a L<Paws::PerformanceInsights::GetResourceMetricsResponse> instance

Retrieve Performance Insights metrics for a set of data sources, over a
time period. You can provide specific dimension groups and dimensions,
and provide aggregation and filtering criteria for each group.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

