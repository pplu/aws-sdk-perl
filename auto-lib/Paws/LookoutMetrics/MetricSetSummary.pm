# Generated by default/object.tt
package Paws::LookoutMetrics::MetricSetSummary;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has MetricSetArn => (is => 'ro', isa => 'Str');
  has MetricSetDescription => (is => 'ro', isa => 'Str');
  has MetricSetName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::LookoutMetrics::TagMap');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::MetricSetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutMetrics::MetricSetSummary object:

  $service_obj->Method(Att1 => { AnomalyDetectorArn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutMetrics::MetricSetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AnomalyDetectorArn

=head1 DESCRIPTION

Contains information about a dataset.

=head1 ATTRIBUTES


=head2 AnomalyDetectorArn => Str

The ARN of the detector to which the dataset belongs.


=head2 CreationTime => Str

The time at which the dataset was created.


=head2 LastModificationTime => Str

The time at which the dataset was last modified.


=head2 MetricSetArn => Str

The ARN of the dataset.


=head2 MetricSetDescription => Str

The description of the dataset.


=head2 MetricSetName => Str

The name of the dataset.


=head2 Tags => L<Paws::LookoutMetrics::TagMap>

The dataset's tags
(https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

