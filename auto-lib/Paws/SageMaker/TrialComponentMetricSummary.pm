package Paws::SageMaker::TrialComponentMetricSummary;
  use Moose;
  has Avg => (is => 'ro', isa => 'Num');
  has Count => (is => 'ro', isa => 'Int');
  has Last => (is => 'ro', isa => 'Num');
  has Max => (is => 'ro', isa => 'Num');
  has MetricName => (is => 'ro', isa => 'Str');
  has Min => (is => 'ro', isa => 'Num');
  has SourceArn => (is => 'ro', isa => 'Str');
  has StdDev => (is => 'ro', isa => 'Num');
  has TimeStamp => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrialComponentMetricSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrialComponentMetricSummary object:

  $service_obj->Method(Att1 => { Avg => $value, ..., TimeStamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrialComponentMetricSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Avg

=head1 DESCRIPTION

A summary of the metrics of a trial component.

=head1 ATTRIBUTES


=head2 Avg => Num

  The average value of the metric.


=head2 Count => Int

  The number of samples used to generate the metric.


=head2 Last => Num

  The most recent value of the metric.


=head2 Max => Num

  The maximum value of the metric.


=head2 MetricName => Str

  The name of the metric.


=head2 Min => Num

  The minimum value of the metric.


=head2 SourceArn => Str

  The Amazon Resource Name (ARN) of the source.


=head2 StdDev => Num

  The standard deviation of the metric.


=head2 TimeStamp => Str

  When the metric was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

