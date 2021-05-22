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

Amazon RDS Performance Insights

Amazon RDS Performance Insights enables you to monitor and explore
different dimensions of database load based on data captured from a
running DB instance. The guide provides detailed information about
Performance Insights data types, parameters and errors.

When Performance Insights is enabled, the Amazon RDS Performance
Insights API provides visibility into the performance of your DB
instance. Amazon CloudWatch provides the authoritative source for AWS
service-vended monitoring metrics. Performance Insights offers a
domain-specific view of DB load.

DB load is measured as Average Active Sessions. Performance Insights
provides the data to API consumers as a two-dimensional time-series
dataset. The time dimension provides DB load data for each time point
in the queried time range. Each time point decomposes overall load in
relation to the requested dimensions, measured at that time point.
Examples include SQL, Wait event, User, and Host.

=over

=item *

To learn more about Performance Insights and Amazon Aurora DB
instances, go to the Amazon Aurora User Guide
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html).

=item *

To learn more about Performance Insights and Amazon RDS DB instances,
go to the Amazon RDS User Guide
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html).

=back


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

Each response element returns a maximum of 500 bytes. For larger
elements, such as SQL statements, only the first 500 bytes are
returned.


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

Each response element returns a maximum of 500 bytes. For larger
elements, such as SQL statements, only the first 500 bytes are
returned.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

