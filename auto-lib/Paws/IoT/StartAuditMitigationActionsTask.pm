
package Paws::IoT::StartAuditMitigationActionsTask;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_AuditCheckToActionsMapping IoT_AuditMitigationActionsTaskTarget/;
  has AuditCheckToActionsMapping => (is => 'ro', isa => IoT_AuditCheckToActionsMapping, required => 1, predicate => 1);
  has ClientRequestToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Target => (is => 'ro', isa => IoT_AuditMitigationActionsTaskTarget, required => 1, predicate => 1);
  has TaskId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartAuditMitigationActionsTask');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/audit/mitigationactions/tasks/{taskId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::StartAuditMitigationActionsTaskResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ClientRequestToken' => 'clientRequestToken',
                       'Target' => 'target',
                       'AuditCheckToActionsMapping' => 'auditCheckToActionsMapping'
                     },
  'IsRequired' => {
                    'TaskId' => 1,
                    'AuditCheckToActionsMapping' => 1,
                    'Target' => 1,
                    'ClientRequestToken' => 1
                  },
  'types' => {
               'TaskId' => {
                             'type' => 'Str'
                           },
               'AuditCheckToActionsMapping' => {
                                                 'type' => 'IoT_AuditCheckToActionsMapping',
                                                 'class' => 'Paws::IoT::AuditCheckToActionsMapping'
                                               },
               'Target' => {
                             'type' => 'IoT_AuditMitigationActionsTaskTarget',
                             'class' => 'Paws::IoT::AuditMitigationActionsTaskTarget'
                           },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       }
             },
  'ParamInURI' => {
                    'TaskId' => 'taskId'
                  }
}
;
    return $Params_map;
  }

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
        ],                                 # , value: min: 1, max: 5
      },
      ClientRequestToken => 'MyClientRequestToken',
      Target             => {
        AuditCheckToReasonCodeFilter => {
          'MyAuditCheckName' => [ 'MyReasonForNonComplianceCode', ... ]
          ,                                # , value: min: 1, max: 25
        },    # OPTIONAL
        AuditTaskId => 'MyAuditTaskId',    # min: 1, max: 40; OPTIONAL
        FindingIds  => [
          'MyFindingId', ...               # min: 1, max: 128
        ],                                 # min: 1, max: 25; OPTIONAL
      },
      TaskId => 'MyAuditMitigationActionsTaskId',

      );

    # Results:
    my $TaskId = $StartAuditMitigationActionsTaskResponse->TaskId;

    # Returns a L<Paws::IoT::StartAuditMitigationActionsTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/StartAuditMitigationActionsTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuditCheckToActionsMapping => IoT_AuditCheckToActionsMapping

For an audit check, specifies which mitigation actions to apply. Those
actions must be defined in your AWS account.



=head2 B<REQUIRED> ClientRequestToken => Str

Each audit mitigation task must have a unique client request token. If
you try to start a new task with the same token as a task that already
exists, an exception occurs. If you omit this value, a unique client
request token is generated automatically.



=head2 B<REQUIRED> Target => IoT_AuditMitigationActionsTaskTarget

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

