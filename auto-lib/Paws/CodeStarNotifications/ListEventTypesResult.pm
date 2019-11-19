
package Paws::CodeStarNotifications::ListEventTypesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeStarNotifications::Types qw/CodeStarNotifications_EventTypeSummary/;
  has EventTypes => (is => 'ro', isa => ArrayRef[CodeStarNotifications_EventTypeSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventTypes' => {
                                 'class' => 'Paws::CodeStarNotifications::EventTypeSummary',
                                 'type' => 'ArrayRef[CodeStarNotifications_EventTypeSummary]'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::ListEventTypesResult

=head1 ATTRIBUTES


=head2 EventTypes => ArrayRef[CodeStarNotifications_EventTypeSummary]

Information about each event, including service name, resource type,
event ID, and event name.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 _request_id => Str


=cut

