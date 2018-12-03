
package Paws::StepFunctions::StopExecution;
  use Moose;
  has Cause => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cause' );
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error' );
  has ExecutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::StopExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::StopExecution - Arguments for method StopExecution on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopExecution on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method StopExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopExecution.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $StopExecutionOutput = $states->StopExecution(
      ExecutionArn => 'MyArn',
      Cause        => 'MySensitiveCause',    # OPTIONAL
      Error        => 'MySensitiveError',    # OPTIONAL
    );

    # Results:
    my $StopDate = $StopExecutionOutput->StopDate;

    # Returns a L<Paws::StepFunctions::StopExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/states/StopExecution>

=head1 ATTRIBUTES


=head2 Cause => Str

A more detailed explanation of the cause of the failure.



=head2 Error => Str

The error code of the failure.



=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) of the execution to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopExecution in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

