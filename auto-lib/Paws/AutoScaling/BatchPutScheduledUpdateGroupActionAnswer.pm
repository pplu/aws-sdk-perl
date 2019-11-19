# Generated from callresult_class.tt

package Paws::AutoScaling::BatchPutScheduledUpdateGroupActionAnswer;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_FailedScheduledUpdateGroupActionRequest/;
  has FailedScheduledUpdateGroupActions => (is => 'ro', isa => ArrayRef[AutoScaling_FailedScheduledUpdateGroupActionRequest]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedScheduledUpdateGroupActions' => {
                                                        'type' => 'ArrayRef[AutoScaling_FailedScheduledUpdateGroupActionRequest]',
                                                        'class' => 'Paws::AutoScaling::FailedScheduledUpdateGroupActionRequest'
                                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::BatchPutScheduledUpdateGroupActionAnswer

=head1 ATTRIBUTES


=head2 FailedScheduledUpdateGroupActions => ArrayRef[AutoScaling_FailedScheduledUpdateGroupActionRequest]

The names of the scheduled actions that could not be created or
updated, including an error message.


=head2 _request_id => Str


=cut

