
package Paws::Backup::ListBackupPlanVersionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Backup::Types qw/Backup_BackupPlansListMember/;
  has BackupPlanVersionsList => (is => 'ro', isa => ArrayRef[Backup_BackupPlansListMember]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BackupPlanVersionsList' => {
                                             'class' => 'Paws::Backup::BackupPlansListMember',
                                             'type' => 'ArrayRef[Backup_BackupPlansListMember]'
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

Paws::Backup::ListBackupPlanVersionsOutput

=head1 ATTRIBUTES


=head2 BackupPlanVersionsList => ArrayRef[Backup_BackupPlansListMember]

An array of version list items containing metadata about your backup
plans.


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 _request_id => Str


=cut

