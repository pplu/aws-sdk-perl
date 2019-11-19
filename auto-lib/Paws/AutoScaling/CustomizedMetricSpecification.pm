# Generated from default/object.tt
package Paws::AutoScaling::CustomizedMetricSpecification;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::AutoScaling::Types qw/AutoScaling_MetricDimension/;
  has Dimensions => (is => 'ro', isa => ArrayRef[AutoScaling_MetricDimension]);
  has MetricName => (is => 'ro', isa => Str, required => 1);
  has Namespace => (is => 'ro', isa => Str, required => 1);
  has Statistic => (is => 'ro', isa => Str, required => 1);
  has Unit => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Statistic' => {
                                'type' => 'Str'
                              },
               'MetricName' => {
                                 'type' => 'Str'
                               },
               'Unit' => {
                           'type' => 'Str'
                         },
               'Namespace' => {
                                'type' => 'Str'
                              },
               'Dimensions' => {
                                 'type' => 'ArrayRef[AutoScaling_MetricDimension]',
                                 'class' => 'Paws::AutoScaling::MetricDimension'
                               }
             },
  'IsRequired' => {
                    'Statistic' => 1,
                    'MetricName' => 1,
                    'Namespace' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::CustomizedMetricSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::CustomizedMetricSpecification object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::CustomizedMetricSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

Represents a CloudWatch metric of your choosing for a target tracking
scaling policy to use with Amazon EC2 Auto Scaling.

To create your customized metric specification:

=over

=item *

Add values for each required parameter from CloudWatch. You can use an
existing metric, or a new metric that you create. To use your own
metric, you must first publish the metric to CloudWatch. For more
information, see Publish Custom Metrics
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html)
in the I<Amazon CloudWatch User Guide>.

=item *

Choose a metric that changes proportionally with capacity. The value of
the metric should increase or decrease in inverse proportion to the
number of capacity units. That is, the value of the metric should
decrease when capacity increases.

=back

For more information about CloudWatch, see Amazon CloudWatch Concepts
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html).

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[AutoScaling_MetricDimension]

  The dimensions of the metric.

Conditional: If you published your metric with dimensions, you must
specify the same dimensions in your scaling policy.


=head2 B<REQUIRED> MetricName => Str

  The name of the metric.


=head2 B<REQUIRED> Namespace => Str

  The namespace of the metric.


=head2 B<REQUIRED> Statistic => Str

  The statistic of the metric.


=head2 Unit => Str

  The unit of the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

