# Generated from json/callresult_class.tt

package Paws::MigrationHub::ListProgressUpdateStreamsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MigrationHub::Types qw/MigrationHub_ProgressUpdateStreamSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has ProgressUpdateStreamSummaryList => (is => 'ro', isa => ArrayRef[MigrationHub_ProgressUpdateStreamSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ProgressUpdateStreamSummaryList' => {
                                                      'class' => 'Paws::MigrationHub::ProgressUpdateStreamSummary',
                                                      'type' => 'ArrayRef[MigrationHub_ProgressUpdateStreamSummary]'
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

Paws::MigrationHub::ListProgressUpdateStreamsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more streams created than the max result, return the next
token to be passed to the next call as a bookmark of where to start
from.


=head2 ProgressUpdateStreamSummaryList => ArrayRef[MigrationHub_ProgressUpdateStreamSummary]

List of progress update streams up to the max number of results passed
in the input.


=head2 _request_id => Str


=cut

1;