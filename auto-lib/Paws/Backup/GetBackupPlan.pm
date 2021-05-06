
package Paws::Backup::GetBackupPlan;
  use Moose;
  has BackupPlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupPlanId', required => 1);
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'versionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBackupPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup/plans/{backupPlanId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::GetBackupPlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetBackupPlan - Arguments for method GetBackupPlan on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBackupPlan on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method GetBackupPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBackupPlan.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $GetBackupPlanOutput = $backup->GetBackupPlan(
      BackupPlanId => 'Mystring',
      VersionId    => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $BackupPlan        = $GetBackupPlanOutput->BackupPlan;
    my $BackupPlanArn     = $GetBackupPlanOutput->BackupPlanArn;
    my $BackupPlanId      = $GetBackupPlanOutput->BackupPlanId;
    my $CreationDate      = $GetBackupPlanOutput->CreationDate;
    my $CreatorRequestId  = $GetBackupPlanOutput->CreatorRequestId;
    my $DeletionDate      = $GetBackupPlanOutput->DeletionDate;
    my $LastExecutionDate = $GetBackupPlanOutput->LastExecutionDate;
    my $VersionId         = $GetBackupPlanOutput->VersionId;

    # Returns a L<Paws::Backup::GetBackupPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/GetBackupPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupPlanId => Str

Uniquely identifies a backup plan.



=head2 VersionId => Str

Unique, randomly generated, Unicode, UTF-8 encoded strings that are at
most 1,024 bytes long. Version IDs cannot be edited.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBackupPlan in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

