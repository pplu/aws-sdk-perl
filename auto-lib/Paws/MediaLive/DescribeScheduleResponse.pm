
package Paws::MediaLive::DescribeScheduleResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_ScheduleAction/;
  has NextToken => (is => 'ro', isa => Str);
  has ScheduleActions => (is => 'ro', isa => ArrayRef[MediaLive_ScheduleAction]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ScheduleActions' => 'scheduleActions'
                     },
  'types' => {
               'ScheduleActions' => {
                                      'type' => 'ArrayRef[MediaLive_ScheduleAction]',
                                      'class' => 'Paws::MediaLive::ScheduleAction'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
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

Paws::MediaLive::DescribeScheduleResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The next token; for use in pagination.


=head2 ScheduleActions => ArrayRef[MediaLive_ScheduleAction]

The list of actions in the schedule.


=head2 _request_id => Str


=cut

