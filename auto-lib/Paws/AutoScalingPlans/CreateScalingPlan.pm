
package Paws::AutoScalingPlans::CreateScalingPlan;
  use Moose;
  has ApplicationSource => (is => 'ro', isa => 'Paws::AutoScalingPlans::ApplicationSource', required => 1);
  has ScalingInstructions => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::ScalingInstruction]', required => 1);
  has ScalingPlanName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateScalingPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScalingPlans::CreateScalingPlanResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::CreateScalingPlan - Arguments for method CreateScalingPlan on L<Paws::AutoScalingPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateScalingPlan on the 
AWS Auto Scaling Plans service. Use the attributes of this class
as arguments to method CreateScalingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateScalingPlan.

As an example:

  $service_obj->CreateScalingPlan(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSource => L<Paws::AutoScalingPlans::ApplicationSource>

A CloudFormation stack or set of tags. You can create one scaling plan
per application source.



=head2 B<REQUIRED> ScalingInstructions => ArrayRef[L<Paws::AutoScalingPlans::ScalingInstruction>]

The scaling instructions.



=head2 B<REQUIRED> ScalingPlanName => Str

The name of the scaling plan. Names cannot contain vertical bars,
colons, or forward slashes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateScalingPlan in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

