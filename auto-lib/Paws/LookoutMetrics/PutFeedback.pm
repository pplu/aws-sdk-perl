
package Paws::LookoutMetrics::PutFeedback;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', required => 1);
  has AnomalyGroupTimeSeriesFeedback => (is => 'ro', isa => 'Paws::LookoutMetrics::AnomalyGroupTimeSeriesFeedback', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutFeedback');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutFeedback');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::PutFeedbackResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::PutFeedback - Arguments for method PutFeedback on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutFeedback on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method PutFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutFeedback.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $PutFeedbackResponse = $lookoutmetrics->PutFeedback(
      AnomalyDetectorArn             => 'MyArn',
      AnomalyGroupTimeSeriesFeedback => {
        AnomalyGroupId => 'MyUUID',            # max: 63
        IsAnomaly      => 1,
        TimeSeriesId   => 'MyTimeSeriesId',    # max: 520

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/PutFeedback>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorArn => Str

The Amazon Resource Name (ARN) of the anomaly detector.



=head2 B<REQUIRED> AnomalyGroupTimeSeriesFeedback => L<Paws::LookoutMetrics::AnomalyGroupTimeSeriesFeedback>

Feedback for an anomalous metric.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutFeedback in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

