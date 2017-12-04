package Paws::StepFunctions::LambdaFunctionScheduledEventDetails;
  use Moose;
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has Resource => (is => 'ro', isa => 'Str', request_name => 'resource', traits => ['NameInRequest'], required => 1);
  has TimeoutInSeconds => (is => 'ro', isa => 'Int', request_name => 'timeoutInSeconds', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::LambdaFunctionScheduledEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::LambdaFunctionScheduledEventDetails object:

  $service_obj->Method(Att1 => { Input => $value, ..., TimeoutInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::LambdaFunctionScheduledEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Input

=head1 DESCRIPTION

Contains details about a lambda function scheduled during an execution.

=head1 ATTRIBUTES


=head2 Input => Str

  The JSON data input to the lambda function.


=head2 B<REQUIRED> Resource => Str

  The Amazon Resource Name (ARN) of the scheduled lambda function.


=head2 TimeoutInSeconds => Int

  The maximum allowed duration of the lambda function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

