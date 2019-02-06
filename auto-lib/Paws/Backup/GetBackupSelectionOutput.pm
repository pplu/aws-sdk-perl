
package Paws::Backup::GetBackupSelectionOutput;
  use Moose;
  has BackupPlanId => (is => 'ro', isa => 'Str');
  has BackupSelection => (is => 'ro', isa => 'Paws::Backup::BackupSelection');
  has CreationDate => (is => 'ro', isa => 'Str');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has SelectionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetBackupSelectionOutput

=head1 ATTRIBUTES


=head2 BackupPlanId => Str

Uniquely identifies a backup plan.


=head2 BackupSelection => L<Paws::Backup::BackupSelection>

Specifies the body of a request to assign a set of resources to a
backup plan.

It includes an array of resources, an optional array of patterns to
exclude resources, an optional role to provide access to the AWS
service that the resource belongs to, and an optional array of tags
used to identify a set of resources.


=head2 CreationDate => Str

The date and time a backup selection is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreatorRequestId => Str

A unique string that identifies the request and allows failed requests
to be retried without the risk of executing the operation twice.


=head2 SelectionId => Str

Uniquely identifies the body of a request to assign a set of resources
to a backup plan.


=head2 _request_id => Str


=cut

