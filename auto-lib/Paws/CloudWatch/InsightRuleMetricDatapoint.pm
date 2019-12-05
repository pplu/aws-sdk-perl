package Paws::CloudWatch::InsightRuleMetricDatapoint;
  use Moose;
  has Average => (is => 'ro', isa => 'Num');
  has MaxContributorValue => (is => 'ro', isa => 'Num');
  has Maximum => (is => 'ro', isa => 'Num');
  has Minimum => (is => 'ro', isa => 'Num');
  has SampleCount => (is => 'ro', isa => 'Num');
  has Sum => (is => 'ro', isa => 'Num');
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
  has UniqueContributors => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::InsightRuleMetricDatapoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::InsightRuleMetricDatapoint object:

  $service_obj->Method(Att1 => { Average => $value, ..., UniqueContributors => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::InsightRuleMetricDatapoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Average

=head1 DESCRIPTION

One data point from the metric time series returned in a Contributor
Insights rule report.

For more information, see GetInsightRuleReport.

=head1 ATTRIBUTES


=head2 Average => Num

  The average value from all contributors during the time period
represented by that data point.

This statistic is returned only if you included it in the C<Metrics>
array in your request.


=head2 MaxContributorValue => Num

  The maximum value provided by one contributor during this timestamp.
Each timestamp is evaluated separately, so the identity of the max
contributor could be different for each timestamp.

This statistic is returned only if you included it in the C<Metrics>
array in your request.


=head2 Maximum => Num

  The maximum value from a single occurence from a single contributor
during the time period represented by that data point.

This statistic is returned only if you included it in the C<Metrics>
array in your request.


=head2 Minimum => Num

  The minimum value from a single contributor during the time period
represented by that data point.

This statistic is returned only if you included it in the C<Metrics>
array in your request.


=head2 SampleCount => Num

  The number of occurrences that matched the rule during this data point.

This statistic is returned only if you included it in the C<Metrics>
array in your request.


=head2 Sum => Num

  The sum of the values from all contributors during the time period
represented by that data point.

This statistic is returned only if you included it in the C<Metrics>
array in your request.


=head2 B<REQUIRED> Timestamp => Str

  The timestamp of the data point.


=head2 UniqueContributors => Num

  The number of unique contributors who published data during this
timestamp.

This statistic is returned only if you included it in the C<Metrics>
array in your request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

