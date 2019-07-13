package Paws::IoT::StepFunctionsAction;
  use Moose;
  has ExecutionNamePrefix => (is => 'ro', isa => 'Str', request_name => 'executionNamePrefix', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has StateMachineName => (is => 'ro', isa => 'Str', request_name => 'stateMachineName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StepFunctionsAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::StepFunctionsAction object:

  $service_obj->Method(Att1 => { ExecutionNamePrefix => $value, ..., StateMachineName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::StepFunctionsAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionNamePrefix

=head1 DESCRIPTION

Starts execution of a Step Functions state machine.

=head1 ATTRIBUTES


=head2 ExecutionNamePrefix => Str

  (Optional) A name will be given to the state machine execution
consisting of this prefix followed by a UUID. Step Functions
automatically creates a unique name for each state machine execution if
one is not provided.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the role that grants IoT permission to start execution of a
state machine ("Action":"states:StartExecution").


=head2 B<REQUIRED> StateMachineName => Str

  The name of the Step Functions state machine whose execution will be
started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

