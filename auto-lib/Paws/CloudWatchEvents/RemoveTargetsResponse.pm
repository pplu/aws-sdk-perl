# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::RemoveTargetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_RemoveTargetsResultEntry/;
  has FailedEntries => (is => 'ro', isa => ArrayRef[CloudWatchEvents_RemoveTargetsResultEntry]);
  has FailedEntryCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedEntryCount' => {
                                       'type' => 'Int'
                                     },
               'FailedEntries' => {
                                    'class' => 'Paws::CloudWatchEvents::RemoveTargetsResultEntry',
                                    'type' => 'ArrayRef[CloudWatchEvents_RemoveTargetsResultEntry]'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::RemoveTargetsResponse

=head1 ATTRIBUTES


=head2 FailedEntries => ArrayRef[CloudWatchEvents_RemoveTargetsResultEntry]

The failed target entries.


=head2 FailedEntryCount => Int

The number of failed entries.


=head2 _request_id => Str


=cut

1;