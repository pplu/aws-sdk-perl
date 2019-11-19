# Generated from default/object.tt
package Paws::CloudWatch::AnomalyDetector;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::CloudWatch::Types qw/CloudWatch_Dimension CloudWatch_AnomalyDetectorConfiguration/;
  has Configuration => (is => 'ro', isa => CloudWatch_AnomalyDetectorConfiguration);
  has Dimensions => (is => 'ro', isa => ArrayRef[CloudWatch_Dimension]);
  has MetricName => (is => 'ro', isa => Str);
  has Namespace => (is => 'ro', isa => Str);
  has Stat => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MetricName' => {
                                 'type' => 'Str'
                               },
               'Stat' => {
                           'type' => 'Str'
                         },
               'Dimensions' => {
                                 'class' => 'Paws::CloudWatch::Dimension',
                                 'type' => 'ArrayRef[CloudWatch_Dimension]'
                               },
               'Namespace' => {
                                'type' => 'Str'
                              },
               'Configuration' => {
                                    'type' => 'CloudWatch_AnomalyDetectorConfiguration',
                                    'class' => 'Paws::CloudWatch::AnomalyDetectorConfiguration'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::AnomalyDetector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::AnomalyDetector object:

  $service_obj->Method(Att1 => { Configuration => $value, ..., Stat => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::AnomalyDetector object:

  $result = $service_obj->Method(...);
  $result->Att1->Configuration

=head1 DESCRIPTION

An anomaly detection model associated with a particular CloudWatch
metric athresnd statistic. You can use the model to display a band of
expected normal values when the metric is graphed.

=head1 ATTRIBUTES


=head2 Configuration => CloudWatch_AnomalyDetectorConfiguration

  The configuration specifies details about how the anomaly detection
model is to be trained, including time ranges to exclude from use for
training the model, and the time zone to use for the metric.


=head2 Dimensions => ArrayRef[CloudWatch_Dimension]

  The metric dimensions associated with the anomaly detection model.


=head2 MetricName => Str

  The name of the metric associated with the anomaly detection model.


=head2 Namespace => Str

  The namespace of the metric associated with the anomaly detection
model.


=head2 Stat => Str

  The statistic associated with the anomaly detection model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

