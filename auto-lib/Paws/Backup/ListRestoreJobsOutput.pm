
package Paws::Backup::ListRestoreJobsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Backup::Types qw/Backup_RestoreJobsListMember/;
  has NextToken => (is => 'ro', isa => Str);
  has RestoreJobs => (is => 'ro', isa => ArrayRef[Backup_RestoreJobsListMember]);

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
               'RestoreJobs' => {
                                  'type' => 'ArrayRef[Backup_RestoreJobsListMember]',
                                  'class' => 'Paws::Backup::RestoreJobsListMember'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListRestoreJobsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 RestoreJobs => ArrayRef[Backup_RestoreJobsListMember]

An array of objects that contain detailed information about jobs to
restore saved resources.


=head2 _request_id => Str


=cut

