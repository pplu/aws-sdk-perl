
package Paws::Backup::UpdateBackupPlan;
  use Moose;
  has BackupPlan => (is => 'ro', isa => 'Paws::Backup::BackupPlanInput', required => 1);
  has BackupPlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupPlanId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBackupPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup/plans/{backupPlanId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::UpdateBackupPlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateBackupPlan - Arguments for method UpdateBackupPlan on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBackupPlan on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method UpdateBackupPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBackupPlan.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $UpdateBackupPlanOutput = $backup->UpdateBackupPlan(
      BackupPlan => {
        BackupPlanName => 'MyBackupPlanName',
        Rules          => [
          {
            RuleName                => 'MyBackupRuleName',
            TargetBackupVaultName   => 'MyBackupVaultName',
            CompletionWindowMinutes => 1,                     # OPTIONAL
            Lifecycle               => {
              DeleteAfterDays            => 1,                # OPTIONAL
              MoveToColdStorageAfterDays => 1,                # OPTIONAL
            },    # OPTIONAL
            RecoveryPointTags  => { 'MyTagKey' => 'MyTagValue', },    # OPTIONAL
            ScheduleExpression => 'MyCronExpression',                 # OPTIONAL
            StartWindowMinutes => 1,                                  # OPTIONAL
          },
          ...
        ],

      },
      BackupPlanId => 'Mystring',

    );

    # Results:
    my $BackupPlanArn = $UpdateBackupPlanOutput->BackupPlanArn;
    my $BackupPlanId  = $UpdateBackupPlanOutput->BackupPlanId;
    my $CreationDate  = $UpdateBackupPlanOutput->CreationDate;
    my $VersionId     = $UpdateBackupPlanOutput->VersionId;

    # Returns a L<Paws::Backup::UpdateBackupPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/UpdateBackupPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupPlan => L<Paws::Backup::BackupPlanInput>

Specifies the body of a backup plan. Includes a C<BackupPlanName> and
one or more sets of C<Rules>.



=head2 B<REQUIRED> BackupPlanId => Str

Uniquely identifies a backup plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBackupPlan in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

