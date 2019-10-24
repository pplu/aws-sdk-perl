# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::PutEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_PutEventsResultEntry/;
  has Entries => (is => 'ro', isa => ArrayRef[CloudWatchEvents_PutEventsResultEntry]);
  has FailedEntryCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Entries' => {
                              'class' => 'Paws::CloudWatchEvents::PutEventsResultEntry',
                              'type' => 'ArrayRef[CloudWatchEvents_PutEventsResultEntry]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedEntryCount' => {
                                       'type' => 'Int'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutEventsResponse

=head1 ATTRIBUTES


=head2 Entries => ArrayRef[CloudWatchEvents_PutEventsResultEntry]

The successfully and unsuccessfully ingested events results. If the
ingestion was successful, the entry has the event ID in it. Otherwise,
you can use the error code and error message to identify the problem
with the entry.


=head2 FailedEntryCount => Int

The number of failed entries.


=head2 _request_id => Str


=cut

1;