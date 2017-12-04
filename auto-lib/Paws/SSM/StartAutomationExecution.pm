
package Paws::SSM::StartAutomationExecution;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str', required => 1);
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAutomationExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::StartAutomationExecutionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StartAutomationExecution - Arguments for method StartAutomationExecution on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAutomationExecution on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method StartAutomationExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAutomationExecution.

As an example:

  $service_obj->StartAutomationExecution(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientToken => Str

User-provided idempotency token. The token must be unique, is case
insensitive, enforces the UUID format, and can't be reused.



=head2 B<REQUIRED> DocumentName => Str

The name of the Automation document to use for this execution.



=head2 DocumentVersion => Str

The version of the Automation document to use for this execution.



=head2 Parameters => L<Paws::SSM::AutomationParameterMap>

A key-value map of execution parameters, which match the declared
parameters in the Automation document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAutomationExecution in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

