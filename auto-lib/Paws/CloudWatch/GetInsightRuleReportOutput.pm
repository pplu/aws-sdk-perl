
package Paws::CloudWatch::GetInsightRuleReportOutput;
  use Moose;
  has AggregateValue => (is => 'ro', isa => 'Num');
  has AggregationStatistic => (is => 'ro', isa => 'Str');
  has ApproximateUniqueCount => (is => 'ro', isa => 'Int');
  has Contributors => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::InsightRuleContributor]');
  has KeyLabels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricDatapoints => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::InsightRuleMetricDatapoint]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetInsightRuleReportOutput

=head1 ATTRIBUTES


=head2 AggregateValue => Num

The sum of the values from all individual contributors that match the
rule.


=head2 AggregationStatistic => Str

Specifies whether this rule aggregates contributor data by COUNT or
SUM.


=head2 ApproximateUniqueCount => Int

An approximate count of the unique contributors found by this rule in
this time period.


=head2 Contributors => ArrayRef[L<Paws::CloudWatch::InsightRuleContributor>]

An array of the unique contributors found by this rule in this time
period. If the rule contains multiple keys, each combination of values
for the keys counts as a unique contributor.


=head2 KeyLabels => ArrayRef[Str|Undef]

An array of the strings used as the keys for this rule. The keys are
the dimensions used to classify contributors. If the rule contains more
than one key, then each unique combination of values for the keys is
counted as a unique contributor.


=head2 MetricDatapoints => ArrayRef[L<Paws::CloudWatch::InsightRuleMetricDatapoint>]

A time series of metric data points that matches the time period in the
rule request.


=head2 _request_id => Str


=cut

