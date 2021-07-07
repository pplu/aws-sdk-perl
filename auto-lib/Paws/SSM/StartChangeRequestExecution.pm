
package Paws::SSM::StartChangeRequestExecution;
  use Moose;
  has ChangeDetails => (is => 'ro', isa => 'Str');
  has ChangeRequestName => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str', required => 1);
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
  has Runbooks => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Runbook]', required => 1);
  has ScheduledEndTime => (is => 'ro', isa => 'Str');
  has ScheduledTime => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartChangeRequestExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::StartChangeRequestExecutionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StartChangeRequestExecution - Arguments for method StartChangeRequestExecution on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartChangeRequestExecution on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method StartChangeRequestExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartChangeRequestExecution.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $StartChangeRequestExecutionResult = $ssm->StartChangeRequestExecution(
      DocumentName => 'MyDocumentARN',
      Runbooks     => [
        {
          DocumentName    => 'MyDocumentARN',
          DocumentVersion => 'MyDocumentVersion',    # OPTIONAL
          MaxConcurrency  => 'MyMaxConcurrency',     # min: 1, max: 7; OPTIONAL
          MaxErrors       => 'MyMaxErrors',          # min: 1, max: 7; OPTIONAL
          Parameters      => {
            'MyAutomationParameterKey' => [
              'MyAutomationParameterValue', ...      # min: 1, max: 512
            ],    # key: min: 1, max: 50, value: max: 50
          },    # min: 1, max: 200; OPTIONAL
          TargetLocations => [
            {
              Accounts => [ 'MyAccount', ... ],    # min: 1, max: 50; OPTIONAL
              ExecutionRoleName =>
                'MyExecutionRoleName',             # min: 1, max: 64; OPTIONAL
              Regions => [ 'MyRegion', ... ],      # min: 1, max: 50; OPTIONAL
              TargetLocationMaxConcurrency =>
                'MyMaxConcurrency',                # min: 1, max: 7; OPTIONAL
              TargetLocationMaxErrors =>
                'MyMaxErrors',                     # min: 1, max: 7; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          TargetParameterName => 'MyAutomationParameterKey',   # min: 1, max: 50
          Targets             => [
            {
              Key    => 'MyTargetKey',              # min: 1, max: 163; OPTIONAL
              Values => [ 'MyTargetValue', ... ],   # max: 50; OPTIONAL
            },
            ...
          ],    # max: 5; OPTIONAL
        },
        ...
      ],
      ChangeDetails     => 'MyChangeDetailsValue',    # OPTIONAL
      ChangeRequestName => 'MyChangeRequestName',     # OPTIONAL
      ClientToken       => 'MyIdempotencyToken',      # OPTIONAL
      DocumentVersion   => 'MyDocumentVersion',       # OPTIONAL
      Parameters        => {
        'MyAutomationParameterKey' => [
          'MyAutomationParameterValue', ...           # min: 1, max: 512
        ],    # key: min: 1, max: 50, value: max: 50
      },    # OPTIONAL
      ScheduledEndTime => '1970-01-01T01:00:00',    # OPTIONAL
      ScheduledTime    => '1970-01-01T01:00:00',    # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AutomationExecutionId =
      $StartChangeRequestExecutionResult->AutomationExecutionId;

    # Returns a L<Paws::SSM::StartChangeRequestExecutionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/StartChangeRequestExecution>

=head1 ATTRIBUTES


=head2 ChangeDetails => Str

User-provided details about the change. If no details are provided,
content specified in the B<Template information> section of the
associated change template is added.



=head2 ChangeRequestName => Str

The name of the change request associated with the runbook workflow to
be run.



=head2 ClientToken => Str

The user-provided idempotency token. The token must be unique, is case
insensitive, enforces the UUID format, and can't be reused.



=head2 B<REQUIRED> DocumentName => Str

The name of the change template document to run during the runbook
workflow.



=head2 DocumentVersion => Str

The version of the change template document to run during the runbook
workflow.



=head2 Parameters => L<Paws::SSM::AutomationParameterMap>

A key-value map of parameters that match the declared parameters in the
change template document.



=head2 B<REQUIRED> Runbooks => ArrayRef[L<Paws::SSM::Runbook>]

Information about the Automation runbooks (Automation documents) that
are run during the runbook workflow.

The Automation runbooks specified for the runbook workflow can't run
until all required approvals for the change request have been received.



=head2 ScheduledEndTime => Str

The time that the requester expects the runbook workflow related to the
change request to complete. The time is an estimate only that the
requester provides for reviewers.



=head2 ScheduledTime => Str

The date and time specified in the change request to run the Automation
runbooks.

The Automation runbooks specified for the runbook workflow can't run
until all required approvals for the change request have been received.



=head2 Tags => ArrayRef[L<Paws::SSM::Tag>]

Optional metadata that you assign to a resource. You can specify a
maximum of five tags for a change request. Tags enable you to
categorize a resource in different ways, such as by purpose, owner, or
environment. For example, you might want to tag a change request to
identify an environment or target AWS Region. In this case, you could
specify the following key-value pairs:

=over

=item *

C<Key=Environment,Value=Production>

=item *

C<Key=Region,Value=us-east-2>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartChangeRequestExecution in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

