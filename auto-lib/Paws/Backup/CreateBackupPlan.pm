
package Paws::Backup::CreateBackupPlan;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Backup::Types qw/Backup_BackupPlanInput Backup_Tags/;
  has BackupPlan => (is => 'ro', isa => Backup_BackupPlanInput, required => 1, predicate => 1);
  has BackupPlanTags => (is => 'ro', isa => Backup_Tags, predicate => 1);
  has CreatorRequestId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateBackupPlan');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/backup/plans/');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Backup::CreateBackupPlanOutput');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'BackupPlan' => 1
                  },
  'types' => {
               'BackupPlanTags' => {
                                     'type' => 'Backup_Tags',
                                     'class' => 'Paws::Backup::Tags'
                                   },
               'CreatorRequestId' => {
                                       'type' => 'Str'
                                     },
               'BackupPlan' => {
                                 'type' => 'Backup_BackupPlanInput',
                                 'class' => 'Paws::Backup::BackupPlanInput'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateBackupPlan - Arguments for method CreateBackupPlan on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBackupPlan on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method CreateBackupPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBackupPlan.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $CreateBackupPlanOutput = $backup->CreateBackupPlan(
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
      BackupPlanTags   => { 'MyTagKey' => 'MyTagValue', },            # OPTIONAL
      CreatorRequestId => 'Mystring',                                 # OPTIONAL
    );

    # Results:
    my $BackupPlanArn = $CreateBackupPlanOutput->BackupPlanArn;
    my $BackupPlanId  = $CreateBackupPlanOutput->BackupPlanId;
    my $CreationDate  = $CreateBackupPlanOutput->CreationDate;
    my $VersionId     = $CreateBackupPlanOutput->VersionId;

    # Returns a L<Paws::Backup::CreateBackupPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/CreateBackupPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupPlan => Backup_BackupPlanInput

Specifies the body of a backup plan. Includes a C<BackupPlanName> and
one or more sets of C<Rules>.



=head2 BackupPlanTags => Backup_Tags

To help organize your resources, you can assign your own metadata to
the resources that you create. Each tag is a key-value pair. The
specified tags are assigned to all backups created with this plan.



=head2 CreatorRequestId => Str

Identifies the request and allows failed requests to be retried without
the risk of executing the operation twice. If the request includes a
C<CreatorRequestId> that matches an existing backup plan, that plan is
returned. This parameter is optional.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBackupPlan in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

