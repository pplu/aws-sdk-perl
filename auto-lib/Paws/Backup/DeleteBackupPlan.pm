
package Paws::Backup::DeleteBackupPlan;
  use Moose;
  has BackupPlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupPlanId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBackupPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup/plans/{backupPlanId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::DeleteBackupPlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DeleteBackupPlan - Arguments for method DeleteBackupPlan on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBackupPlan on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DeleteBackupPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBackupPlan.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $DeleteBackupPlanOutput = $backup->DeleteBackupPlan(
      BackupPlanId => 'Mystring',

    );

    # Results:
    my $BackupPlanArn = $DeleteBackupPlanOutput->BackupPlanArn;
    my $BackupPlanId  = $DeleteBackupPlanOutput->BackupPlanId;
    my $DeletionDate  = $DeleteBackupPlanOutput->DeletionDate;
    my $VersionId     = $DeleteBackupPlanOutput->VersionId;

    # Returns a L<Paws::Backup::DeleteBackupPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DeleteBackupPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupPlanId => Str

Uniquely identifies a backup plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBackupPlan in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

