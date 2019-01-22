
package Paws::Backup::GetBackupPlanFromTemplateOutput;
  use Moose;
  has BackupPlanDocument => (is => 'ro', isa => 'Paws::Backup::BackupPlan');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetBackupPlanFromTemplateOutput

=head1 ATTRIBUTES


=head2 BackupPlanDocument => L<Paws::Backup::BackupPlan>

Returns the body of a backup plan based on the target template,
including the name, rules, and backup vault of the plan.


=head2 _request_id => Str


=cut

