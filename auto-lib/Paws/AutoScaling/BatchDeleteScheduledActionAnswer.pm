# Generated from callresult_class.tt

package Paws::AutoScaling::BatchDeleteScheduledActionAnswer;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_FailedScheduledUpdateGroupActionRequest/;
  has FailedScheduledActions => (is => 'ro', isa => ArrayRef[AutoScaling_FailedScheduledUpdateGroupActionRequest]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedScheduledActions' => {
                                             'class' => 'Paws::AutoScaling::FailedScheduledUpdateGroupActionRequest',
                                             'type' => 'ArrayRef[AutoScaling_FailedScheduledUpdateGroupActionRequest]'
                                           }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::BatchDeleteScheduledActionAnswer

=head1 ATTRIBUTES


=head2 FailedScheduledActions => ArrayRef[AutoScaling_FailedScheduledUpdateGroupActionRequest]

The names of the scheduled actions that could not be deleted, including
an error message.


=head2 _request_id => Str


=cut

