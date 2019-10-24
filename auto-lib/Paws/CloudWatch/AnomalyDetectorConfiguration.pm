# Generated from default/object.tt
package Paws::CloudWatch::AnomalyDetectorConfiguration;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::CloudWatch::Types qw/CloudWatch_Range/;
  has ExcludedTimeRanges => (is => 'ro', isa => ArrayRef[CloudWatch_Range]);
  has MetricTimezone => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MetricTimezone' => {
                                     'type' => 'Str'
                                   },
               'ExcludedTimeRanges' => {
                                         'class' => 'Paws::CloudWatch::Range',
                                         'type' => 'ArrayRef[CloudWatch_Range]'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::AnomalyDetectorConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::AnomalyDetectorConfiguration object:

  $service_obj->Method(Att1 => { ExcludedTimeRanges => $value, ..., MetricTimezone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::AnomalyDetectorConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludedTimeRanges

=head1 DESCRIPTION

The configuration specifies details about how the anomaly detection
model is to be trained, including time ranges to exclude from use for
training the model and the time zone to use for the metric.

=head1 ATTRIBUTES


=head2 ExcludedTimeRanges => ArrayRef[CloudWatch_Range]

  An array of time ranges to exclude from use when the anomaly detection
model is trained. Use this to make sure that events that could cause
unusual values for the metric, such as deployments, aren't used when
CloudWatch creates the model.


=head2 MetricTimezone => Str

  The time zone to use for the metric. This is useful to enable the model
to automatically account for daylight savings time changes if the
metric is sensitive to such time changes.

To specify a time zone, use the name of the time zone as specified in
the standard tz database. For more information, see tz database
(https://en.wikipedia.org/wiki/Tz_database).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

