# Generated from default/object.tt
package Paws::IoT::AuditMitigationActionExecutionMetadata;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has ActionId => (is => 'ro', isa => Str);
  has ActionName => (is => 'ro', isa => Str);
  has EndTime => (is => 'ro', isa => Str);
  has ErrorCode => (is => 'ro', isa => Str);
  has FindingId => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);
  has StartTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TaskId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ActionId' => 'actionId',
                       'ActionName' => 'actionName',
                       'FindingId' => 'findingId',
                       'TaskId' => 'taskId',
                       'ErrorCode' => 'errorCode',
                       'EndTime' => 'endTime',
                       'Message' => 'message',
                       'StartTime' => 'startTime',
                       'Status' => 'status'
                     },
  'types' => {
               'Message' => {
                              'type' => 'Str'
                            },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'Status' => {
                             'type' => 'Str'
                           },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'ActionId' => {
                               'type' => 'Str'
                             },
               'ActionName' => {
                                 'type' => 'Str'
                               },
               'FindingId' => {
                                'type' => 'Str'
                              },
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'TaskId' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AuditMitigationActionExecutionMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AuditMitigationActionExecutionMetadata object:

  $service_obj->Method(Att1 => { ActionId => $value, ..., TaskId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AuditMitigationActionExecutionMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionId

=head1 DESCRIPTION

Returned by ListAuditMitigationActionsTask, this object contains
information that describes a mitigation action that has been started.

=head1 ATTRIBUTES


=head2 ActionId => Str

  The unique identifier for the mitigation action being applied by the
task.


=head2 ActionName => Str

  The friendly name of the mitigation action being applied by the task.


=head2 EndTime => Str

  The date and time when the task was completed or canceled. Blank if the
task is still running.


=head2 ErrorCode => Str

  If an error occurred, the code that indicates which type of error
occurred.


=head2 FindingId => Str

  The unique identifier for the findings to which the task and associated
mitigation action are applied.


=head2 Message => Str

  If an error occurred, a message that describes the error.


=head2 StartTime => Str

  The date and time when the task was started.


=head2 Status => Str

  The current status of the task being executed.


=head2 TaskId => Str

  The unique identifier for the task that applies the mitigation action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

