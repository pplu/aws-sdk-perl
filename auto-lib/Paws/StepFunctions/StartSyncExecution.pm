
package Paws::StepFunctions::StartSyncExecution;
  use Moose;
  has Input => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'input' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has TraceHeader => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'traceHeader' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSyncExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::StartSyncExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::StartSyncExecution - Arguments for method StartSyncExecution on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSyncExecution on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method StartSyncExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSyncExecution.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $StartSyncExecutionOutput = $states->StartSyncExecution(
      StateMachineArn => 'MyArn',
      Input           => 'MySensitiveData',    # OPTIONAL
      Name            => 'MyName',             # OPTIONAL
      TraceHeader     => 'MyTraceHeader',      # OPTIONAL
    );

    # Results:
    my $BillingDetails  = $StartSyncExecutionOutput->BillingDetails;
    my $Cause           = $StartSyncExecutionOutput->Cause;
    my $Error           = $StartSyncExecutionOutput->Error;
    my $ExecutionArn    = $StartSyncExecutionOutput->ExecutionArn;
    my $Input           = $StartSyncExecutionOutput->Input;
    my $InputDetails    = $StartSyncExecutionOutput->InputDetails;
    my $Name            = $StartSyncExecutionOutput->Name;
    my $Output          = $StartSyncExecutionOutput->Output;
    my $OutputDetails   = $StartSyncExecutionOutput->OutputDetails;
    my $StartDate       = $StartSyncExecutionOutput->StartDate;
    my $StateMachineArn = $StartSyncExecutionOutput->StateMachineArn;
    my $Status          = $StartSyncExecutionOutput->Status;
    my $StopDate        = $StartSyncExecutionOutput->StopDate;
    my $TraceHeader     = $StartSyncExecutionOutput->TraceHeader;

    # Returns a L<Paws::StepFunctions::StartSyncExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/states/StartSyncExecution>

=head1 ATTRIBUTES


=head2 Input => Str

The string that contains the JSON input data for the execution, for
example:

C<"input": "{\"first_name\" : \"test\"}">

If you don't include any JSON input data, you still must include the
two braces, for example: C<"input": "{}">

Length constraints apply to the payload size, and are expressed as
bytes in UTF-8 encoding.



=head2 Name => Str

The name of the execution.



=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the state machine to execute.



=head2 TraceHeader => Str

Passes the AWS X-Ray trace header. The trace header can also be passed
in the request payload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSyncExecution in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

