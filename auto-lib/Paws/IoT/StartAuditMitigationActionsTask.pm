
package Paws::IoT::StartAuditMitigationActionsTask;
  use Moose;
  has AuditCheckToActionsMapping => (is => 'ro', isa => 'Paws::IoT::AuditCheckToActionsMapping', traits => ['NameInRequest'], request_name => 'auditCheckToActionsMapping', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken', required => 1);
  has Target => (is => 'ro', isa => 'Paws::IoT::AuditMitigationActionsTaskTarget', traits => ['NameInRequest'], request_name => 'target', required => 1);
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAuditMitigationActionsTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/mitigationactions/tasks/{taskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::StartAuditMitigationActionsTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StartAuditMitigationActionsTask - Arguments for method StartAuditMitigationActionsTask on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAuditMitigationActionsTask on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method StartAuditMitigationActionsTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAuditMitigationActionsTask.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $StartAuditMitigationActionsTaskResponse =
      $iot->StartAuditMitigationActionsTask(
      AuditCheckToActionsMapping => {
        'MyAuditCheckName' => [
          'MyMitigationActionName', ...    # max: 128
        ],    # , value: min: 1, max: 5
      },
      ClientRequestToken => 'MyClientRequestToken',
      Target             => {
        AuditCheckToReasonCodeFilter => {
          'MyAuditCheckName' => [ 'MyReasonForNonComplianceCode', ... ]
          ,    # , value: min: 1, max: 25
        },    # OPTIONAL
        AuditTaskId => 'MyAuditTaskId',    # min: 1, max: 40; OPTIONAL
        FindingIds  => [
          'MyFindingId', ...               # min: 1, max: 128
        ],    # min: 1, max: 25; OPTIONAL
      },
      TaskId => 'MyAuditMitigationActionsTaskId',

      );

    # Results:
    my $TaskId = $StartAuditMitigationActionsTaskResponse->TaskId;

    # Returns a L<Paws::IoT::StartAuditMitigationActionsTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/StartAuditMitigationActionsTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuditCheckToActionsMapping => L<Paws::IoT::AuditCheckToActionsMapping>

For an audit check, specifies which mitigation actions to apply. Those
actions must be defined in your AWS account.



=head2 B<REQUIRED> ClientRequestToken => Str

Each audit mitigation task must have a unique client request token. If
you try to start a new task with the same token as a task that already
exists, an exception occurs. If you omit this value, a unique client
request token is generated automatically.



=head2 B<REQUIRED> Target => L<Paws::IoT::AuditMitigationActionsTaskTarget>

Specifies the audit findings to which the mitigation actions are
applied. You can apply them to a type of audit check, to all findings
from an audit, or to a speecific set of findings.



=head2 B<REQUIRED> TaskId => Str

A unique identifier for the task. You can use this identifier to check
the status of the task or to cancel it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAuditMitigationActionsTask in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

