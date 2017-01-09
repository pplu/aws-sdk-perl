package Paws::EMR::SimpleScalingPolicyConfiguration;
  use Moose;
  has AdjustmentType => (is => 'ro', isa => 'Str');
  has CoolDown => (is => 'ro', isa => 'Int');
  has ScalingAdjustment => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::SimpleScalingPolicyConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::SimpleScalingPolicyConfiguration object:

  $service_obj->Method(Att1 => { AdjustmentType => $value, ..., ScalingAdjustment => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::SimpleScalingPolicyConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AdjustmentType

=head1 DESCRIPTION

An automatic scaling configuration, which describes how the policy adds
or removes instances, the cooldown period, and the number of EC2
instances that will be added each time the CloudWatch metric alarm
condition is satisfied.

=head1 ATTRIBUTES


=head2 AdjustmentType => Str

  The way in which EC2 instances are added (if C<ScalingAdjustment> is a
positive number) or terminated (if C<ScalingAdjustment> is a negative
number) each time the scaling activity is triggered.
C<CHANGE_IN_CAPACITY> is the default. C<CHANGE_IN_CAPACITY> indicates
that the EC2 instance count increments or decrements by
C<ScalingAdjustment>, which should be expressed as an integer.
C<PERCENT_CHANGE_IN_CAPACITY> indicates the instance count increments
or decrements by the percentage specified by C<ScalingAdjustment>,
which should be expressed as a decimal, for example, 0.20 indicates an
increase in 20% increments of cluster capacity. C<EXACT_CAPACITY>
indicates the scaling activity results in an instance group with the
number of EC2 instances specified by C<ScalingAdjustment>, which should
be expressed as a positive integer.


=head2 CoolDown => Int

  The amount of time, in seconds, after a scaling activity completes
before any further trigger-related scaling activities can start. The
default value is 0.


=head2 B<REQUIRED> ScalingAdjustment => Int

  The amount by which to scale in or scale out, based on the specified
C<AdjustmentType>. A positive value adds to the instance group's EC2
instance count while a negative number removes instances. If
C<AdjustmentType> is set to C<EXACT_CAPACITY>, the number should only
be a positive integer. If C<AdjustmentType> is set to
C<PERCENT_CHANGE_IN_CAPACITY>, the value should express the percentage
as a decimal. For example, -0.20 indicates a decrease in 20% increments
of cluster capacity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

