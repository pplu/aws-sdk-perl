package Paws::EMR::AutoScalingPolicyDescription;
  use Moose;
  has Constraints => (is => 'ro', isa => 'Paws::EMR::ScalingConstraints');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::EMR::ScalingRule]');
  has Status => (is => 'ro', isa => 'Paws::EMR::AutoScalingPolicyStatus');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::AutoScalingPolicyDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::AutoScalingPolicyDescription object:

  $service_obj->Method(Att1 => { Constraints => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::AutoScalingPolicyDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Constraints

=head1 DESCRIPTION

An automatic scaling policy for a core instance group or task instance
group in an Amazon EMR cluster. The automatic scaling policy defines
how an instance group dynamically adds and terminates EC2 instances in
response to the value of a CloudWatch metric. See PutAutoScalingPolicy.

=head1 ATTRIBUTES


=head2 Constraints => L<Paws::EMR::ScalingConstraints>

  The upper and lower EC2 instance limits for an automatic scaling
policy. Automatic scaling activity will not cause an instance group to
grow above or below these limits.


=head2 Rules => ArrayRef[L<Paws::EMR::ScalingRule>]

  The scale-in and scale-out rules that comprise the automatic scaling
policy.


=head2 Status => L<Paws::EMR::AutoScalingPolicyStatus>

  The status of an automatic scaling policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

