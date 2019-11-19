# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::ListEventSourcesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_EventSource/;
  has EventSources => (is => 'ro', isa => ArrayRef[CloudWatchEvents_EventSource]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventSources' => {
                                   'type' => 'ArrayRef[CloudWatchEvents_EventSource]',
                                   'class' => 'Paws::CloudWatchEvents::EventSource'
                                 },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListEventSourcesResponse

=head1 ATTRIBUTES


=head2 EventSources => ArrayRef[CloudWatchEvents_EventSource]

The list of event sources.


=head2 NextToken => Str

A token you can use in a subsequent operation to retrieve the next set
of results.


=head2 _request_id => Str


=cut

1;