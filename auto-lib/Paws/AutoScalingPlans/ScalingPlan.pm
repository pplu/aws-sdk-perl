package Paws::AutoScalingPlans::ScalingPlan;
  use Moose;
  has ApplicationSource => (is => 'ro', isa => 'Paws::AutoScalingPlans::ApplicationSource', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str');
  has ScalingInstructions => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::ScalingInstruction]', required => 1);
  has ScalingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingPlanVersion => (is => 'ro', isa => 'Int', required => 1);
  has StatusCode => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');
  has StatusStartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::ScalingPlan

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScalingPlans::ScalingPlan object:

  $service_obj->Method(Att1 => { ApplicationSource => $value, ..., StatusStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScalingPlans::ScalingPlan object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationSource

=head1 DESCRIPTION

Represents a scaling plan.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSource => L<Paws::AutoScalingPlans::ApplicationSource>

  The application source.


=head2 CreationTime => Str

  The Unix time stamp when the scaling plan was created.


=head2 B<REQUIRED> ScalingInstructions => ArrayRef[L<Paws::AutoScalingPlans::ScalingInstruction>]

  The scaling instructions.


=head2 B<REQUIRED> ScalingPlanName => Str

  The name of the scaling plan.


=head2 B<REQUIRED> ScalingPlanVersion => Int

  The version number of the scaling plan.


=head2 B<REQUIRED> StatusCode => Str

  The status of the scaling plan.

=over

=item *

C<Active> - The scaling plan is active.

=item *

C<ActiveWithProblems> - The scaling plan is active, but the scaling
configuration for one or more resources could not be applied.

=item *

C<CreationInProgress> - The scaling plan is being created.

=item *

C<CreationFailed> - The scaling plan could not be created.

=item *

C<DeletionInProgress> - The scaling plan is being deleted.

=item *

C<DeletionFailed> - The scaling plan could not be deleted.

=item *

C<UpdateInProgress> - The scaling plan is being updated.

=item *

C<UpdateFailed> - The scaling plan could not be updated.

=back



=head2 StatusMessage => Str

  A simple message about the current status of the scaling plan.


=head2 StatusStartTime => Str

  The Unix time stamp when the scaling plan entered the current status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

