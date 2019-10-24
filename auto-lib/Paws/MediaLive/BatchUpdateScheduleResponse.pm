
package Paws::MediaLive::BatchUpdateScheduleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_BatchScheduleActionDeleteResult MediaLive_BatchScheduleActionCreateResult/;
  has Creates => (is => 'ro', isa => MediaLive_BatchScheduleActionCreateResult);
  has Deletes => (is => 'ro', isa => MediaLive_BatchScheduleActionDeleteResult);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Creates' => {
                              'class' => 'Paws::MediaLive::BatchScheduleActionCreateResult',
                              'type' => 'MediaLive_BatchScheduleActionCreateResult'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Deletes' => {
                              'class' => 'Paws::MediaLive::BatchScheduleActionDeleteResult',
                              'type' => 'MediaLive_BatchScheduleActionDeleteResult'
                            }
             },
  'NameInRequest' => {
                       'Creates' => 'creates',
                       'Deletes' => 'deletes'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::BatchUpdateScheduleResponse

=head1 ATTRIBUTES


=head2 Creates => MediaLive_BatchScheduleActionCreateResult

Schedule actions created in the schedule.


=head2 Deletes => MediaLive_BatchScheduleActionDeleteResult

Schedule actions deleted from the schedule.


=head2 _request_id => Str


=cut

