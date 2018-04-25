
package Paws::AutoScalingPlans::UpdateScalingPlan;
  use Moose;
  has ApplicationSource => (is => 'ro', isa => 'Paws::AutoScalingPlans::ApplicationSource');
  has ScalingInstructions => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::ScalingInstruction]');
  has ScalingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingPlanVersion => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScalingPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScalingPlans::UpdateScalingPlanResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::UpdateScalingPlan - Arguments for method UpdateScalingPlan on L<Paws::AutoScalingPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateScalingPlan on the 
L<AWS Auto Scaling Plans|Paws::AutoScalingPlans> service. Use the attributes of this class
as arguments to method UpdateScalingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateScalingPlan.

As an example:

  $service_obj->UpdateScalingPlan(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ApplicationSource => L<Paws::AutoScalingPlans::ApplicationSource>

A CloudFormation stack or set of tags.



=head2 ScalingInstructions => ArrayRef[L<Paws::AutoScalingPlans::ScalingInstruction>]

The scaling instructions.



=head2 B<REQUIRED> ScalingPlanName => Str

The name of the scaling plan.



=head2 B<REQUIRED> ScalingPlanVersion => Int

The version number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateScalingPlan in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

