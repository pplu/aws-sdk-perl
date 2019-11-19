# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::ListPartnerEventSourcesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_PartnerEventSource/;
  has NextToken => (is => 'ro', isa => Str);
  has PartnerEventSources => (is => 'ro', isa => ArrayRef[CloudWatchEvents_PartnerEventSource]);

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
               'PartnerEventSources' => {
                                          'class' => 'Paws::CloudWatchEvents::PartnerEventSource',
                                          'type' => 'ArrayRef[CloudWatchEvents_PartnerEventSource]'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListPartnerEventSourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token you can use in a subsequent operation to retrieve the next set
of results.


=head2 PartnerEventSources => ArrayRef[CloudWatchEvents_PartnerEventSource]

The list of partner event sources returned by the operation.


=head2 _request_id => Str


=cut

1;