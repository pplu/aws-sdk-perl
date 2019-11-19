
package Paws::Backup::ListBackupJobsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Backup::Types qw/Backup_BackupJob/;
  has BackupJobs => (is => 'ro', isa => ArrayRef[Backup_BackupJob]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BackupJobs' => {
                                 'class' => 'Paws::Backup::BackupJob',
                                 'type' => 'ArrayRef[Backup_BackupJob]'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListBackupJobsOutput

=head1 ATTRIBUTES


=head2 BackupJobs => ArrayRef[Backup_BackupJob]

An array of structures containing metadata about your backup jobs
returned in JSON format.


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 _request_id => Str


=cut

