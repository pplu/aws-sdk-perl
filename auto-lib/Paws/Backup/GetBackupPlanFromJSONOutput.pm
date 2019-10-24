
package Paws::Backup::GetBackupPlanFromJSONOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Backup::Types qw/Backup_BackupPlan/;
  has BackupPlan => (is => 'ro', isa => Backup_BackupPlan);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BackupPlan' => {
                                 'class' => 'Paws::Backup::BackupPlan',
                                 'type' => 'Backup_BackupPlan'
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

Paws::Backup::GetBackupPlanFromJSONOutput

=head1 ATTRIBUTES


=head2 BackupPlan => Backup_BackupPlan

Specifies the body of a backup plan. Includes a C<BackupPlanName> and
one or more sets of C<Rules>.


=head2 _request_id => Str


=cut

