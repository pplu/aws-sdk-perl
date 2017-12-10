package Paws::EMR::StepDetail;
  use Moose;
  has ExecutionStatusDetail => (is => 'ro', isa => 'Paws::EMR::StepExecutionStatusDetail', required => 1);
  has StepConfig => (is => 'ro', isa => 'Paws::EMR::StepConfig', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::StepDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::StepDetail object:

  $service_obj->Method(Att1 => { ExecutionStatusDetail => $value, ..., StepConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::StepDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionStatusDetail

=head1 DESCRIPTION

Combines the execution state and configuration of a step.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionStatusDetail => L<Paws::EMR::StepExecutionStatusDetail>

  The description of the step status.


=head2 B<REQUIRED> StepConfig => L<Paws::EMR::StepConfig>

  The step configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

