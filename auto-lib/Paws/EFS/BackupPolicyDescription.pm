
package Paws::EFS::BackupPolicyDescription;
  use Moose;
  has BackupPolicy => (is => 'ro', isa => 'Paws::EFS::BackupPolicy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::BackupPolicyDescription

=head1 ATTRIBUTES


=head2 BackupPolicy => L<Paws::EFS::BackupPolicy>

Describes the file system's backup policy, indicating whether automatic
backups are turned on or off..


=head2 _request_id => Str


=cut

