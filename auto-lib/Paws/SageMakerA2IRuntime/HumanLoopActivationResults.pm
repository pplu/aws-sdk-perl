package Paws::SageMakerA2IRuntime::HumanLoopActivationResults;
  use Moose;
  has HumanLoopActivationConditionsEvaluationResults => (is => 'ro', isa => 'Str');
  has HumanLoopActivationReason => (is => 'ro', isa => 'Paws::SageMakerA2IRuntime::HumanLoopActivationReason');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::HumanLoopActivationResults

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMakerA2IRuntime::HumanLoopActivationResults object:

  $service_obj->Method(Att1 => { HumanLoopActivationConditionsEvaluationResults => $value, ..., HumanLoopActivationReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMakerA2IRuntime::HumanLoopActivationResults object:

  $result = $service_obj->Method(...);
  $result->Att1->HumanLoopActivationConditionsEvaluationResults

=head1 DESCRIPTION

Information about the corresponding flow definition's human loop
activation condition evaluation. Null if C<StartHumanLoop> was invoked
directly.

=head1 ATTRIBUTES


=head2 HumanLoopActivationConditionsEvaluationResults => Str

  A copy of the human loop activation conditions of the flow definition,
augmented with the results of evaluating those conditions on the input
provided to the C<StartHumanLoop> operation.


=head2 HumanLoopActivationReason => L<Paws::SageMakerA2IRuntime::HumanLoopActivationReason>

  An object containing information about why a human loop was triggered.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMakerA2IRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

