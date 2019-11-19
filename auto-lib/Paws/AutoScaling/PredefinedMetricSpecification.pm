package Paws::AutoScaling::PredefinedMetricSpecification;
  use Moose;
  has PredefinedMetricType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceLabel => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PredefinedMetricSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::PredefinedMetricSpecification object:

  $service_obj->Method(Att1 => { PredefinedMetricType => $value, ..., ResourceLabel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::PredefinedMetricSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->PredefinedMetricType

=head1 DESCRIPTION

Represents a predefined metric for a target tracking scaling policy to
use with Amazon EC2 Auto Scaling.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PredefinedMetricType => Str

  The metric type. The following predefined metrics are available:

=over

=item *

C<ASGAverageCPUUtilization> - Average CPU utilization of the Auto
Scaling group.

=item *

C<ASGAverageNetworkIn> - Average number of bytes received on all
network interfaces by the Auto Scaling group.

=item *

C<ASGAverageNetworkOut> - Average number of bytes sent out on all
network interfaces by the Auto Scaling group.

=item *

C<ALBRequestCountPerTarget> - Number of requests completed per target
in an Application Load Balancer target group.

=back



=head2 ResourceLabel => Str

  Identifies the resource associated with the metric type. You can't
specify a resource label unless the metric type is
C<ALBRequestCountPerTarget> and there is a target group attached to the
Auto Scaling group.

The format is
C<app/I<load-balancer-name>/I<load-balancer-id>/targetgroup/I<target-group-name>/I<target-group-id>
>, where

=over

=item *

C<app/I<load-balancer-name>/I<load-balancer-id> > is the final portion
of the load balancer ARN, and

=item *

C<targetgroup/I<target-group-name>/I<target-group-id> > is the final
portion of the target group ARN.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

