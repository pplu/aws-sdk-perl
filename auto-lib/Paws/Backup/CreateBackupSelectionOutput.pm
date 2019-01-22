
package Paws::Backup::CreateBackupSelectionOutput;
  use Moose;
  has BackupPlanId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has SelectionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateBackupSelectionOutput

=head1 ATTRIBUTES


=head2 BackupPlanId => Str

Uniquely identifies a backup plan.


=head2 CreationDate => Str

The date and time a backup selection is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 SelectionId => Str

Uniquely identifies the body of a request to assign a set of resources
to a backup plan.


=head2 _request_id => Str


=cut

