# Generated from json/callresult_class.tt

package Paws::ApplicationAutoScaling::DescribeScheduledActionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApplicationAutoScaling::Types qw/ApplicationAutoScaling_ScheduledAction/;
  has NextToken => (is => 'ro', isa => Str);
  has ScheduledActions => (is => 'ro', isa => ArrayRef[ApplicationAutoScaling_ScheduledAction]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ScheduledActions' => {
                                       'type' => 'ArrayRef[ApplicationAutoScaling_ScheduledAction]',
                                       'class' => 'Paws::ApplicationAutoScaling::ScheduledAction'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScheduledActionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScheduledActions => ArrayRef[ApplicationAutoScaling_ScheduledAction]

Information about the scheduled actions.


=head2 _request_id => Str


=cut

1;