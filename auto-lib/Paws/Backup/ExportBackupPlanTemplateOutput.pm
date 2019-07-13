
package Paws::Backup::ExportBackupPlanTemplateOutput;
  use Moose;
  has BackupPlanTemplateJson => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ExportBackupPlanTemplateOutput

=head1 ATTRIBUTES


=head2 BackupPlanTemplateJson => Str

The body of a backup plan template in JSON format.

This is a signed JSON document that cannot be modified before being
passed to C<GetBackupPlanFromJSON.>


=head2 _request_id => Str


=cut

