# Generated by default/object.tt
package Paws::WAFV2::VisibilityConfig;
  use Moose;
  has CloudWatchMetricsEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has SampledRequestsEnabled => (is => 'ro', isa => 'Bool', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::VisibilityConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::VisibilityConfig object:

  $service_obj->Method(Att1 => { CloudWatchMetricsEnabled => $value, ..., SampledRequestsEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::VisibilityConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchMetricsEnabled

=head1 DESCRIPTION

Defines and enables Amazon CloudWatch metrics and web request sample
collection.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudWatchMetricsEnabled => Bool

A boolean indicating whether the associated resource sends metrics to
Amazon CloudWatch. For the list of available metrics, see WAF Metrics
(https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics).


=head2 B<REQUIRED> MetricName => Str

A name of the Amazon CloudWatch metric. The name can contain only the
characters: A-Z, a-z, 0-9, - (hyphen), and _ (underscore). The name can
be from one to 128 characters long. It can't contain whitespace or
metric names reserved for WAF, for example "All" and "Default_Action."


=head2 B<REQUIRED> SampledRequestsEnabled => Bool

A boolean indicating whether WAF should store a sampling of the web
requests that match the rules. You can view the sampled requests
through the WAF console.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

