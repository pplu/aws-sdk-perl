# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::PutTargetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_PutTargetsResultEntry/;
  has FailedEntries => (is => 'ro', isa => ArrayRef[CloudWatchEvents_PutTargetsResultEntry]);
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
                                    'class' => 'Paws::CloudWatchEvents::PutTargetsResultEntry',
                                    'type' => 'ArrayRef[CloudWatchEvents_PutTargetsResultEntry]'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutTargetsResponse

=head1 ATTRIBUTES


=head2 FailedEntries => ArrayRef[CloudWatchEvents_PutTargetsResultEntry]

The failed target entries.


=head2 FailedEntryCount => Int

The number of failed entries.


=head2 _request_id => Str


=cut

1;