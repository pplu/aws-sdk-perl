package Paws::EMR::ScalingRule;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::EMR::ScalingAction', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Trigger => (is => 'ro', isa => 'Paws::EMR::ScalingTrigger', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ScalingRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::ScalingRule object:

  $service_obj->Method(Att1 => { Action => $value, ..., Trigger => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::ScalingRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

A scale-in or scale-out rule that defines scaling activity, including
the CloudWatch metric alarm that triggers activity, how EC2 instances
are added or removed, and the periodicity of adjustments. The automatic
scaling policy for an instance group can comprise one or more automatic
scaling rules.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => L<Paws::EMR::ScalingAction>

  The conditions that trigger an automatic scaling activity.


=head2 Description => Str

  A friendly, more verbose description of the automatic scaling rule.


=head2 B<REQUIRED> Name => Str

  The name used to identify an automatic scaling rule. Rule names must be
unique within a scaling policy.


=head2 B<REQUIRED> Trigger => L<Paws::EMR::ScalingTrigger>

  The CloudWatch alarm definition that determines when automatic scaling
activity is triggered.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

