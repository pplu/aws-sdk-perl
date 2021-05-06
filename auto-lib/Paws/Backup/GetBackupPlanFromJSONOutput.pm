
package Paws::Backup::GetBackupPlanFromJSONOutput;
  use Moose;
  has BackupPlan => (is => 'ro', isa => 'Paws::Backup::BackupPlan');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetBackupPlanFromJSONOutput

=head1 ATTRIBUTES


=head2 BackupPlan => L<Paws::Backup::BackupPlan>

Specifies the body of a backup plan. Includes a C<BackupPlanName> and
one or more sets of C<Rules>.


=head2 _request_id => Str


=cut

