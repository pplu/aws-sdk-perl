
package Paws::Backup::ListBackupSelectionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Backup::Types qw/Backup_BackupSelectionsListMember/;
  has BackupSelectionsList => (is => 'ro', isa => ArrayRef[Backup_BackupSelectionsListMember]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'BackupSelectionsList' => {
                                           'class' => 'Paws::Backup::BackupSelectionsListMember',
                                           'type' => 'ArrayRef[Backup_BackupSelectionsListMember]'
                                         },
               '_request_id' => {
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

Paws::Backup::ListBackupSelectionsOutput

=head1 ATTRIBUTES


=head2 BackupSelectionsList => ArrayRef[Backup_BackupSelectionsListMember]

An array of backup selection list items containing metadata about each
resource in the list.


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 _request_id => Str


=cut

