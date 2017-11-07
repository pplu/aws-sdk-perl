package Paws::StepFunctions::ExecutionSucceededEventDetails;
  use Moose;
  has Output => (is => 'ro', isa => 'Str', request_name => 'output', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ExecutionSucceededEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::ExecutionSucceededEventDetails object:

  $service_obj->Method(Att1 => { Output => $value, ..., Output => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::ExecutionSucceededEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Output

=head1 DESCRIPTION

Contains details about the successful termination of the execution.

=head1 ATTRIBUTES


=head2 Output => Str

  The JSON data output by the execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

