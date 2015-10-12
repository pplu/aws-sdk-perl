package Paws::AutoScaling::StepAdjustment;
  use Moose;
  has MetricIntervalLowerBound => (is => 'ro', isa => 'Num');
  has MetricIntervalUpperBound => (is => 'ro', isa => 'Num');
  has ScalingAdjustment => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::StepAdjustment

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::StepAdjustment object:

  $service_obj->Method(Att1 => { MetricIntervalLowerBound => $value, ..., ScalingAdjustment => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::StepAdjustment object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricIntervalLowerBound

=head1 ATTRIBUTES

=head2 MetricIntervalLowerBound => Num

  The lower bound for the difference between the alarm threshold and the
CloudWatch metric. If the metric value is above the breach threshold,
the lower bound is inclusive (the metric must be greater than or equal
to the threshold plus the lower bound). Otherwise, it is exclusive (the
metric must be greater than the threshold plus the lower bound). A null
value indicates negative infinity.

=head2 MetricIntervalUpperBound => Num

  The upper bound for the difference between the alarm threshold and the
CloudWatch metric. If the metric value is above the breach threshold,
the upper bound is exclusive (the metric must be less than the
threshold plus the upper bound). Otherwise, it is inclusive (the metric
must be less than or equal to the threshold plus the upper bound). A
null value indicates positive infinity.

The upper bound must be greater than the lower bound.

=head2 B<REQUIRED> ScalingAdjustment => Int

  The amount by which to scale, based on the specified adjustment type. A
positive value adds to the current capacity while a negative number
removes from the current capacity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

