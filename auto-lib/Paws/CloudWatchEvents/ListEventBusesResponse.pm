# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::ListEventBusesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_EventBus/;
  has EventBuses => (is => 'ro', isa => ArrayRef[CloudWatchEvents_EventBus]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'EventBuses' => {
                                 'class' => 'Paws::CloudWatchEvents::EventBus',
                                 'type' => 'ArrayRef[CloudWatchEvents_EventBus]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListEventBusesResponse

=head1 ATTRIBUTES


=head2 EventBuses => ArrayRef[CloudWatchEvents_EventBus]

This list of event buses.


=head2 NextToken => Str

A token you can use in a subsequent operation to retrieve the next set
of results.


=head2 _request_id => Str


=cut

1;