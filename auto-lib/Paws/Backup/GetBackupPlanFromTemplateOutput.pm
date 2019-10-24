
package Paws::Backup::GetBackupPlanFromTemplateOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Backup::Types qw/Backup_BackupPlan/;
  has BackupPlanDocument => (is => 'ro', isa => Backup_BackupPlan);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BackupPlanDocument' => {
                                         'class' => 'Paws::Backup::BackupPlan',
                                         'type' => 'Backup_BackupPlan'
                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetBackupPlanFromTemplateOutput

=head1 ATTRIBUTES


=head2 BackupPlanDocument => Backup_BackupPlan

Returns the body of a backup plan based on the target template,
including the name, rules, and backup vault of the plan.


=head2 _request_id => Str


=cut

