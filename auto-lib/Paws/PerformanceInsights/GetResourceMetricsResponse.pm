# Generated from json/callresult_class.tt

package Paws::PerformanceInsights::GetResourceMetricsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PerformanceInsights::Types qw/PerformanceInsights_MetricKeyDataPoints/;
  has AlignedEndTime => (is => 'ro', isa => Str);
  has AlignedStartTime => (is => 'ro', isa => Str);
  has Identifier => (is => 'ro', isa => Str);
  has MetricList => (is => 'ro', isa => ArrayRef[PerformanceInsights_MetricKeyDataPoints]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AlignedStartTime' => {
                                       'type' => 'Str'
                                     },
               'AlignedEndTime' => {
                                     'type' => 'Str'
                                   },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Identifier' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MetricList' => {
                                 'class' => 'Paws::PerformanceInsights::MetricKeyDataPoints',
                                 'type' => 'ArrayRef[PerformanceInsights_MetricKeyDataPoints]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::GetResourceMetricsResponse

=head1 ATTRIBUTES


=head2 AlignedEndTime => Str

The end time for the returned metrics, after alignment to a granular
boundary (as specified by C<PeriodInSeconds>). C<AlignedEndTime> will
be greater than or equal to the value of the user-specified C<Endtime>.


=head2 AlignedStartTime => Str

The start time for the returned metrics, after alignment to a granular
boundary (as specified by C<PeriodInSeconds>). C<AlignedStartTime> will
be less than or equal to the value of the user-specified C<StartTime>.


=head2 Identifier => Str

An immutable, AWS Region-unique identifier for a data source.
Performance Insights gathers metrics from this data source.

To use an Amazon RDS instance as a data source, you specify its
C<DbiResourceId> value - for example: C<db-FAIHNTYBKTGAUSUZQYPDS2GW4A>


=head2 MetricList => ArrayRef[PerformanceInsights_MetricKeyDataPoints]

An array of metric results,, where each array element contains all of
the data points for a particular dimension.


=head2 NextToken => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
token, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

1;