# Generated from json/callresult_class.tt

package Paws::MigrationHub::ListMigrationTasksResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MigrationHub::Types qw/MigrationHub_MigrationTaskSummary/;
  has MigrationTaskSummaryList => (is => 'ro', isa => ArrayRef[MigrationHub_MigrationTaskSummary]);
  has NextToken => (is => 'ro', isa => Str);

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
               'MigrationTaskSummaryList' => {
                                               'type' => 'ArrayRef[MigrationHub_MigrationTaskSummary]',
                                               'class' => 'Paws::MigrationHub::MigrationTaskSummary'
                                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListMigrationTasksResult

=head1 ATTRIBUTES


=head2 MigrationTaskSummaryList => ArrayRef[MigrationHub_MigrationTaskSummary]

Lists the migration task's summary which includes:
C<MigrationTaskName>, C<ProgressPercent>, C<ProgressUpdateStream>,
C<Status>, and the C<UpdateDateTime> for each task.


=head2 NextToken => Str

If there are more migration tasks than the max result, return the next
token to be passed to the next call as a bookmark of where to start
from.


=head2 _request_id => Str


=cut

1;