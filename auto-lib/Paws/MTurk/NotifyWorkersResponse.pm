# Generated from json/callresult_class.tt

package Paws::MTurk::NotifyWorkersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MTurk::Types qw/MTurk_NotifyWorkersFailureStatus/;
  has NotifyWorkersFailureStatuses => (is => 'ro', isa => ArrayRef[MTurk_NotifyWorkersFailureStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NotifyWorkersFailureStatuses' => {
                                                   'class' => 'Paws::MTurk::NotifyWorkersFailureStatus',
                                                   'type' => 'ArrayRef[MTurk_NotifyWorkersFailureStatus]'
                                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MTurk::NotifyWorkersResponse

=head1 ATTRIBUTES


=head2 NotifyWorkersFailureStatuses => ArrayRef[MTurk_NotifyWorkersFailureStatus]

When MTurk sends notifications to the list of Workers, it returns back
any failures it encounters in this list of NotifyWorkersFailureStatus
objects.


=head2 _request_id => Str


=cut

1;