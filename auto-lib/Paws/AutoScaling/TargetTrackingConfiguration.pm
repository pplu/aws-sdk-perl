package Paws::AutoScaling::TargetTrackingConfiguration;
  use Moose;
  has CustomizedMetricSpecification => (is => 'ro', isa => 'Paws::AutoScaling::CustomizedMetricSpecification');
  has DisableScaleIn => (is => 'ro', isa => 'Bool');
  has PredefinedMetricSpecification => (is => 'ro', isa => 'Paws::AutoScaling::PredefinedMetricSpecification');
  has TargetValue => (is => 'ro', isa => 'Num', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::TargetTrackingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::TargetTrackingConfiguration object:

  $service_obj->Method(Att1 => { CustomizedMetricSpecification => $value, ..., TargetValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::TargetTrackingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomizedMetricSpecification

=head1 DESCRIPTION

Represents a target tracking policy configuration.

=head1 ATTRIBUTES


=head2 CustomizedMetricSpecification => L<Paws::AutoScaling::CustomizedMetricSpecification>

  A customized metric.


=head2 DisableScaleIn => Bool

  Indicates whether scaling in by the target tracking policy is disabled.
If scaling in is disabled, the target tracking policy doesn't remove
instances from the Auto Scaling group. Otherwise, the target tracking
policy can remove instances from the Auto Scaling group. The default is
disabled.


=head2 PredefinedMetricSpecification => L<Paws::AutoScaling::PredefinedMetricSpecification>

  A predefined metric. You can specify either a predefined metric or a
customized metric.


=head2 B<REQUIRED> TargetValue => Num

  The target value for the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

