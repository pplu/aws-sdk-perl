package Paws::CloudWatch::Metric;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::Metric

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::Metric object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Namespace => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::Metric object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

The C<Metric> data type contains information about a specific metric.
If you call ListMetrics, Amazon CloudWatch returns information
contained by this data type.

The example in the Examples section publishes two metrics named buffers
and latency. Both metrics are in the examples namespace. Both metrics
have two dimensions, InstanceID and InstanceType.

=head1 ATTRIBUTES

=head2 Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]

  A list of dimensions associated with the metric.

=head2 MetricName => Str

  The name of the metric.

=head2 Namespace => Str

  The namespace of the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

