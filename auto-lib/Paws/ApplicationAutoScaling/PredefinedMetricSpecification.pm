package Paws::ApplicationAutoScaling::PredefinedMetricSpecification;
  use Moose;
  has PredefinedMetricType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceLabel => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::PredefinedMetricSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::PredefinedMetricSpecification object:

  $service_obj->Method(Att1 => { PredefinedMetricType => $value, ..., ResourceLabel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::PredefinedMetricSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->PredefinedMetricType

=head1 DESCRIPTION

Configures a predefined metric for a target tracking policy to use with
Application Auto Scaling.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PredefinedMetricType => Str

  The metric type. The C<ALBRequestCountPerTarget> metric type applies
only to Spot fleet requests and ECS services.


=head2 ResourceLabel => Str

  Identifies the resource associated with the metric type. You can't
specify a resource label unless the metric type is
C<ALBRequestCountPerTarget> and there is a target group attached to the
Spot fleet request or ECS service.

The format is
app/E<lt>load-balancer-nameE<gt>/E<lt>load-balancer-idE<gt>/targetgroup/E<lt>target-group-nameE<gt>/E<lt>target-group-idE<gt>,
where:

=over

=item *

app/E<lt>load-balancer-nameE<gt>/E<lt>load-balancer-idE<gt> is the
final portion of the load balancer ARN

=item *

targetgroup/E<lt>target-group-nameE<gt>/E<lt>target-group-idE<gt> is
the final portion of the target group ARN.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

