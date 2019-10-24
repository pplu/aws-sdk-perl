
package Paws::Backup::ListBackupPlanTemplatesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Backup::Types qw/Backup_BackupPlanTemplatesListMember/;
  has BackupPlanTemplatesList => (is => 'ro', isa => ArrayRef[Backup_BackupPlanTemplatesListMember]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BackupPlanTemplatesList' => {
                                              'class' => 'Paws::Backup::BackupPlanTemplatesListMember',
                                              'type' => 'ArrayRef[Backup_BackupPlanTemplatesListMember]'
                                            },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::Backup::ListBackupPlanTemplatesOutput

=head1 ATTRIBUTES


=head2 BackupPlanTemplatesList => ArrayRef[Backup_BackupPlanTemplatesListMember]

An array of template list items containing metadata about your saved
templates.


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 _request_id => Str


=cut

