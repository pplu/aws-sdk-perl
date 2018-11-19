
package Paws::SSM::StartAutomationExecution;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str', required => 1);
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Mode => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
  has TargetLocations => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetLocation]');
  has TargetMaps => (is => 'ro', isa => 'ArrayRef[Paws::SSM::TargetMap]');
  has TargetParameterName => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');

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
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method StartAutomationExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAutomationExecution.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $StartAutomationExecutionResult = $ssm->StartAutomationExecution(
      DocumentName    => 'MyDocumentARN',
      ClientToken     => 'MyIdempotencyToken',    # OPTIONAL
      DocumentVersion => 'MyDocumentVersion',     # OPTIONAL
      MaxConcurrency  => 'MyMaxConcurrency',      # OPTIONAL
      MaxErrors       => 'MyMaxErrors',           # OPTIONAL
      Mode            => 'Auto',                  # OPTIONAL
      Parameters      => {
        'MyAutomationParameterKey' => [
          'MyAutomationParameterValue', ...       # min: 1, max: 512
        ],    # key: min: 1, max: 30, value: max: 10
      },    # OPTIONAL
      TargetLocations => [
        {
          Accounts => [ 'MyAccount', ... ],    # min: 1, max: 50; OPTIONAL
          ExecutionRoleName =>
            'MyExecutionRoleName',             # min: 1, max: 64; OPTIONAL
          Regions => [ 'MyRegion', ... ],      # min: 1, max: 50; OPTIONAL
          TargetLocationMaxConcurrency => 'MyMaxConcurrency',   # min: 1, max: 7
          TargetLocationMaxErrors      => 'MyMaxErrors',        # min: 1, max: 7
        },
        ...
      ],                                                        # OPTIONAL
      TargetMaps => [
        {
          'MyTargetMapKey' => [
            'MyTargetMapValue', ...    # min: 1, max: 50
          ],                           # key: min: 1, max: 50, value: max: 25
        },
        ...                            # min: 1, max: 20
      ],                               # OPTIONAL
      TargetParameterName => 'MyAutomationParameterKey',    # OPTIONAL
      Targets             => [
        {
          Key => 'MyTargetKey',                  # min: 1, max: 128; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
    );

    # Results:
    my $AutomationExecutionId =
      $StartAutomationExecutionResult->AutomationExecutionId;

    # Returns a L<Paws::SSM::StartAutomationExecutionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/StartAutomationExecution>

=head1 ATTRIBUTES


=head2 ClientToken => Str

User-provided idempotency token. The token must be unique, is case
insensitive, enforces the UUID format, and can't be reused.



=head2 B<REQUIRED> DocumentName => Str

The name of the Automation document to use for this execution.



=head2 DocumentVersion => Str

The version of the Automation document to use for this execution.



=head2 MaxConcurrency => Str

The maximum number of targets allowed to run this task in parallel. You
can specify a number, such as 10, or a percentage, such as 10%. The
default value is 10.



=head2 MaxErrors => Str

The number of errors that are allowed before the system stops running
the automation on additional targets. You can specify either an
absolute number of errors, for example 10, or a percentage of the
target set, for example 10%. If you specify 3, for example, the system
stops running the automation when the fourth error is received. If you
specify 0, then the system stops running the automation on additional
targets after the first error result is returned. If you run an
automation on 50 resources and set max-errors to 10%, then the system
stops running the automation on additional targets when the sixth error
is received.

Executions that are already running an automation when max-errors is
reached are allowed to complete, but some of these executions may fail
as well. If you need to ensure that there won't be more than max-errors
failed executions, set max-concurrency to 1 so the executions proceed
one at a time.



=head2 Mode => Str

The execution mode of the automation. Valid modes include the
following: Auto and Interactive. The default mode is Auto.

Valid values are: C<"Auto">, C<"Interactive">

=head2 Parameters => L<Paws::SSM::AutomationParameterMap>

A key-value map of execution parameters, which match the declared
parameters in the Automation document.



=head2 TargetLocations => ArrayRef[L<Paws::SSM::TargetLocation>]

A location is a combination of AWS Regions and/or AWS accounts where
you want to execute the Automation. Use this action to start an
Automation in multiple Regions and multiple accounts. For more
information, see Concurrently Executing Automations in Multiple AWS
Regions and Accounts
(http://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html)
in the I<AWS Systems Manager User Guide>.



=head2 TargetMaps => ArrayRef[L<Paws::SSM::TargetMap>]

A key-value mapping of document parameters to target resources. Both
Targets and TargetMaps cannot be specified together.



=head2 TargetParameterName => Str

The name of the parameter used as the target resource for the
rate-controlled execution. Required if you specify targets.



=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

A key-value mapping to target resources. Required if you specify
TargetParameterName.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAutomationExecution in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

