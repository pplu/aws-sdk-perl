package Paws::SageMakerA2IRuntime::HumanLoopActivationReason;
  use Moose;
  has ConditionsMatched => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime::HumanLoopActivationReason

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMakerA2IRuntime::HumanLoopActivationReason object:

  $service_obj->Method(Att1 => { ConditionsMatched => $value, ..., ConditionsMatched => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMakerA2IRuntime::HumanLoopActivationReason object:

  $result = $service_obj->Method(...);
  $result->Att1->ConditionsMatched

=head1 DESCRIPTION

Contains information about why a human loop was triggered. If at least
one activation reason is evaluated to be true, the human loop is
activated.

=head1 ATTRIBUTES


=head2 ConditionsMatched => Bool

  True if the specified conditions were matched to trigger the human
loop.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMakerA2IRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

