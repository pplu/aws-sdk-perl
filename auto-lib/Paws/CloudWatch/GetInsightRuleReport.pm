
package Paws::CloudWatch::GetInsightRuleReport;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has MaxContributorCount => (is => 'ro', isa => 'Int');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OrderBy => (is => 'ro', isa => 'Str');
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has RuleName => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInsightRuleReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::GetInsightRuleReportOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetInsightRuleReportResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetInsightRuleReport - Arguments for method GetInsightRuleReport on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInsightRuleReport on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method GetInsightRuleReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInsightRuleReport.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $GetInsightRuleReportOutput = $monitoring->GetInsightRuleReport(
      EndTime             => '1970-01-01T01:00:00',
      Period              => 1,
      RuleName            => 'MyInsightRuleName',
      StartTime           => '1970-01-01T01:00:00',
      MaxContributorCount => 1,                       # OPTIONAL
      Metrics             => [
        'MyInsightRuleMetricName', ...                # min: 1, max: 32
      ],                                              # OPTIONAL
      OrderBy => 'MyInsightRuleOrderBy',              # OPTIONAL
    );

    # Results:
    my $AggregateValue = $GetInsightRuleReportOutput->AggregateValue;
    my $AggregationStatistic =
      $GetInsightRuleReportOutput->AggregationStatistic;
    my $ApproximateUniqueCount =
      $GetInsightRuleReportOutput->ApproximateUniqueCount;
    my $Contributors     = $GetInsightRuleReportOutput->Contributors;
    my $KeyLabels        = $GetInsightRuleReportOutput->KeyLabels;
    my $MetricDatapoints = $GetInsightRuleReportOutput->MetricDatapoints;

    # Returns a L<Paws::CloudWatch::GetInsightRuleReportOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/GetInsightRuleReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end time of the data to use in the report. When used in a raw HTTP
Query API, it is formatted as C<yyyy-MM-dd'T'HH:mm:ss>. For example,
C<2019-07-01T23:59:59>.



=head2 MaxContributorCount => Int

The maximum number of contributors to include in the report. The range
is 1 to 100. If you omit this, the default of 10 is used.



=head2 Metrics => ArrayRef[Str|Undef]

Specifies which metrics to use for aggregation of contributor values
for the report. You can specify one or more of the following metrics:

=over

=item *

C<UniqueContributors> -- the number of unique contributors for each
data point.

=item *

C<MaxContributorValue> -- the value of the top contributor for each
data point. The identity of the contributor may change for each data
point in the graph.

If this rule aggregates by COUNT, the top contributor for each data
point is the contributor with the most occurrences in that period. If
the rule aggregates by SUM, the top contributor is the contributor with
the highest sum in the log field specified by the rule's C<Value>,
during that period.

=item *

C<SampleCount> -- the number of data points matched by the rule.

=item *

C<Sum> -- the sum of the values from all contributors during the time
period represented by that data point.

=item *

C<Minimum> -- the minimum value from a single observation during the
time period represented by that data point.

=item *

C<Maximum> -- the maximum value from a single observation during the
time period represented by that data point.

=item *

C<Average> -- the average value from all contributors during the time
period represented by that data point.

=back




=head2 OrderBy => Str

Determines what statistic to use to rank the contributors. Valid values
are SUM and MAXIMUM.



=head2 B<REQUIRED> Period => Int

The period, in seconds, to use for the statistics in the
C<InsightRuleMetricDatapoint> results.



=head2 B<REQUIRED> RuleName => Str

The name of the rule that you want to see data from.



=head2 B<REQUIRED> StartTime => Str

The start time of the data to use in the report. When used in a raw
HTTP Query API, it is formatted as C<yyyy-MM-dd'T'HH:mm:ss>. For
example, C<2019-07-01T23:59:59>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInsightRuleReport in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

