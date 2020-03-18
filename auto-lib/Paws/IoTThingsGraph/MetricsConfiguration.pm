package Paws::IoTThingsGraph::MetricsConfiguration;
  use Moose;
  has CloudMetricEnabled => (is => 'ro', isa => 'Bool', request_name => 'cloudMetricEnabled', traits => ['NameInRequest']);
  has MetricRuleRoleArn => (is => 'ro', isa => 'Str', request_name => 'metricRuleRoleArn', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::MetricsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::MetricsConfiguration object:

  $service_obj->Method(Att1 => { CloudMetricEnabled => $value, ..., MetricRuleRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::MetricsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudMetricEnabled

=head1 DESCRIPTION

An object that specifies whether cloud metrics are collected in a
deployment and, if so, what role is used to collect metrics.

=head1 ATTRIBUTES


=head2 CloudMetricEnabled => Bool

  A Boolean that specifies whether cloud metrics are collected.


=head2 MetricRuleRoleArn => Str

  The ARN of the role that is used to collect cloud metrics.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

