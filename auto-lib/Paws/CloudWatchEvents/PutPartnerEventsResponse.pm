# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::PutPartnerEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_PutPartnerEventsResultEntry/;
  has Entries => (is => 'ro', isa => ArrayRef[CloudWatchEvents_PutPartnerEventsResultEntry]);
  has FailedEntryCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailedEntryCount' => {
                                       'type' => 'Int'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Entries' => {
                              'type' => 'ArrayRef[CloudWatchEvents_PutPartnerEventsResultEntry]',
                              'class' => 'Paws::CloudWatchEvents::PutPartnerEventsResultEntry'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutPartnerEventsResponse

=head1 ATTRIBUTES


=head2 Entries => ArrayRef[CloudWatchEvents_PutPartnerEventsResultEntry]

The list of events from this operation that were successfully written
to the partner event bus.


=head2 FailedEntryCount => Int

The number of events from this operation that couldn't be written to
the partner event bus.


=head2 _request_id => Str


=cut

1;