package Paws::AutoScalingPlans::PredefinedLoadMetricSpecification;
  use Moose;
  has PredefinedLoadMetricType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceLabel => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::PredefinedLoadMetricSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScalingPlans::PredefinedLoadMetricSpecification object:

  $service_obj->Method(Att1 => { PredefinedLoadMetricType => $value, ..., ResourceLabel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScalingPlans::PredefinedLoadMetricSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->PredefinedLoadMetricType

=head1 DESCRIPTION

Represents a predefined metric that can be used for predictive scaling.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PredefinedLoadMetricType => Str

  The metric type.


=head2 ResourceLabel => Str

  Identifies the resource associated with the metric type. You can't
specify a resource label unless the metric type is
C<ALBRequestCountPerTarget> and there is a target group for an
Application Load Balancer attached to the Auto Scaling group.

The format is
app/E<lt>load-balancer-nameE<gt>/E<lt>load-balancer-idE<gt>/targetgroup/E<lt>target-group-nameE<gt>/E<lt>target-group-idE<gt>,
where:

=over

=item *

app/E<lt>load-balancer-nameE<gt>/E<lt>load-balancer-idE<gt> is the
final portion of the load balancer ARN.

=item *

targetgroup/E<lt>target-group-nameE<gt>/E<lt>target-group-idE<gt> is
the final portion of the target group ARN.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

