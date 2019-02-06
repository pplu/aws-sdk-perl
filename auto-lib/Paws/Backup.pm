package Paws::Backup;
  use Moose;
  sub service { 'backup' }
  sub signing_name { 'backup' }
  sub version { '2018-11-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateBackupPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateBackupPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackupSelection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateBackupSelection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackupVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::CreateBackupVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackupPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteBackupPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackupSelection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteBackupSelection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackupVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteBackupVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackupVaultAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteBackupVaultAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackupVaultNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteBackupVaultNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRecoveryPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DeleteRecoveryPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackupJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeBackupJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackupVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeBackupVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProtectedResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeProtectedResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecoveryPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeRecoveryPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRestoreJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::DescribeRestoreJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportBackupPlanTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ExportBackupPlanTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupPlanFromJSON {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupPlanFromJSON', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupPlanFromTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupPlanFromTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupSelection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupSelection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupVaultAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupVaultAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackupVaultNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetBackupVaultNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecoveryPointRestoreMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetRecoveryPointRestoreMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSupportedResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::GetSupportedResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupPlanTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupPlanTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupPlanVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupPlanVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupSelections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupSelections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackupVaults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListBackupVaults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtectedResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListProtectedResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecoveryPointsByBackupVault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListRecoveryPointsByBackupVault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecoveryPointsByResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListRecoveryPointsByResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRestoreJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListRestoreJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBackupVaultAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::PutBackupVaultAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBackupVaultNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::PutBackupVaultNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBackupJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::StartBackupJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRestoreJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::StartRestoreJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopBackupJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::StopBackupJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBackupPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UpdateBackupPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRecoveryPointLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Backup::UpdateRecoveryPointLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateBackupPlan CreateBackupSelection CreateBackupVault DeleteBackupPlan DeleteBackupSelection DeleteBackupVault DeleteBackupVaultAccessPolicy DeleteBackupVaultNotifications DeleteRecoveryPoint DescribeBackupJob DescribeBackupVault DescribeProtectedResource DescribeRecoveryPoint DescribeRestoreJob ExportBackupPlanTemplate GetBackupPlan GetBackupPlanFromJSON GetBackupPlanFromTemplate GetBackupSelection GetBackupVaultAccessPolicy GetBackupVaultNotifications GetRecoveryPointRestoreMetadata GetSupportedResourceTypes ListBackupJobs ListBackupPlans ListBackupPlanTemplates ListBackupPlanVersions ListBackupSelections ListBackupVaults ListProtectedResources ListRecoveryPointsByBackupVault ListRecoveryPointsByResource ListRestoreJobs ListTags PutBackupVaultAccessPolicy PutBackupVaultNotifications StartBackupJob StartRestoreJob StopBackupJob TagResource UntagResource UpdateBackupPlan UpdateRecoveryPointLifecycle / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup - Perl Interface to AWS AWS Backup

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Backup');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Backup

AWS Backup is a unified backup service designed to protect AWS services
and their associated data. AWS Backup simplifies the creation,
migration, restoration, and deletion of backups, while also providing
reporting and auditing.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15>


=head1 METHODS

=head2 CreateBackupPlan

=over

=item BackupPlan => L<Paws::Backup::BackupPlanInput>

=item [BackupPlanTags => L<Paws::Backup::Tags>]

=item [CreatorRequestId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::CreateBackupPlan>

Returns: a L<Paws::Backup::CreateBackupPlanOutput> instance

Backup plans are documents that contain information that AWS Backup
uses to schedule tasks that create recovery points of resources.

If you call C<CreateBackupPlan> with a plan that already exists, the
existing C<backupPlanId> is returned.


=head2 CreateBackupSelection

=over

=item BackupPlanId => Str

=item BackupSelection => L<Paws::Backup::BackupSelection>

=item [CreatorRequestId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::CreateBackupSelection>

Returns: a L<Paws::Backup::CreateBackupSelectionOutput> instance

Creates a JSON document that specifies a set of resources to assign to
a backup plan. Resources can be included by specifying patterns for a
C<ListOfTags> and selected C<Resources>.

For example, consider the following patterns:

=over

=item *

C<Resources: "arn:aws:ec2:region:account-id:volume/volume-id">

=item *

C<ConditionKey:"department">

C<ConditionValue:"finance">

C<ConditionType:"StringEquals">

=item *

C<ConditionKey:"importance">

C<ConditionValue:"critical">

C<ConditionType:"StringEquals">

=back

Using these patterns would back up all Amazon Elastic Block Store
(Amazon EBS) volumes that are tagged as C<"department=finance">,
C<"importance=critical">, in addition to an EBS volume with the
specified volume Id.

Resources and conditions are additive in that all resources that match
the pattern are selected. This shouldn't be confused with a logical
AND, where all conditions must match. The matching patterns are
logically 'put together using the OR operator. In other words, all
patterns that match are selected for backup.


=head2 CreateBackupVault

=over

=item BackupVaultName => Str

=item [BackupVaultTags => L<Paws::Backup::Tags>]

=item [CreatorRequestId => Str]

=item [EncryptionKeyArn => Str]


=back

Each argument is described in detail in: L<Paws::Backup::CreateBackupVault>

Returns: a L<Paws::Backup::CreateBackupVaultOutput> instance

Creates a logical container where backups are stored. A
C<CreateBackupVault> request includes a name, optionally one or more
resource tags, an encryption key, and a request ID.

Sensitive data, such as passport numbers, should not be included the
name of a backup vault.


=head2 DeleteBackupPlan

=over

=item BackupPlanId => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteBackupPlan>

Returns: a L<Paws::Backup::DeleteBackupPlanOutput> instance

Deletes a backup plan. A backup plan can only be deleted after all
associated selections of resources have been deleted. Deleting a backup
plan deletes the current version of a backup plan. Previous versions,
if any, will still exist.


=head2 DeleteBackupSelection

=over

=item BackupPlanId => Str

=item SelectionId => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteBackupSelection>

Returns: nothing

Deletes the resource selection associated with a backup plan that is
specified by the C<SelectionId>.


=head2 DeleteBackupVault

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteBackupVault>

Returns: nothing

Deletes the backup vault identified by its name. A vault can be deleted
only if it is empty.


=head2 DeleteBackupVaultAccessPolicy

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteBackupVaultAccessPolicy>

Returns: nothing

Deletes the policy document that manages permissions on a backup vault.


=head2 DeleteBackupVaultNotifications

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteBackupVaultNotifications>

Returns: nothing

Deletes event notifications for the specified backup vault.


=head2 DeleteRecoveryPoint

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str


=back

Each argument is described in detail in: L<Paws::Backup::DeleteRecoveryPoint>

Returns: nothing

Deletes the recovery point specified by a recovery point ID.


=head2 DescribeBackupJob

=over

=item BackupJobId => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeBackupJob>

Returns: a L<Paws::Backup::DescribeBackupJobOutput> instance

Returns metadata associated with creating a backup of a resource.


=head2 DescribeBackupVault

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeBackupVault>

Returns: a L<Paws::Backup::DescribeBackupVaultOutput> instance

Returns metadata about a backup vault specified by its name.


=head2 DescribeProtectedResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeProtectedResource>

Returns: a L<Paws::Backup::DescribeProtectedResourceOutput> instance

Returns information about a saved resource, including the last time it
was backed-up, its Amazon Resource Name (ARN), and the AWS service type
of the saved resource.


=head2 DescribeRecoveryPoint

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeRecoveryPoint>

Returns: a L<Paws::Backup::DescribeRecoveryPointOutput> instance

Returns metadata associated with a recovery point, including ID,
status, encryption, and lifecycle.


=head2 DescribeRestoreJob

=over

=item RestoreJobId => Str


=back

Each argument is described in detail in: L<Paws::Backup::DescribeRestoreJob>

Returns: a L<Paws::Backup::DescribeRestoreJobOutput> instance

Returns metadata associated with a restore job that is specified by a
job ID.


=head2 ExportBackupPlanTemplate

=over

=item BackupPlanId => Str


=back

Each argument is described in detail in: L<Paws::Backup::ExportBackupPlanTemplate>

Returns: a L<Paws::Backup::ExportBackupPlanTemplateOutput> instance

Returns the backup plan that is specified by the plan ID as a backup
template.


=head2 GetBackupPlan

=over

=item BackupPlanId => Str

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupPlan>

Returns: a L<Paws::Backup::GetBackupPlanOutput> instance

Returns the body of a backup plan in JSON format, in addition to plan
metadata.


=head2 GetBackupPlanFromJSON

=over

=item BackupPlanTemplateJson => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupPlanFromJSON>

Returns: a L<Paws::Backup::GetBackupPlanFromJSONOutput> instance

Returns a valid JSON document specifying a backup plan or an error.


=head2 GetBackupPlanFromTemplate

=over

=item BackupPlanTemplateId => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupPlanFromTemplate>

Returns: a L<Paws::Backup::GetBackupPlanFromTemplateOutput> instance

Returns the template specified by its C<templateId> as a backup plan.


=head2 GetBackupSelection

=over

=item BackupPlanId => Str

=item SelectionId => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupSelection>

Returns: a L<Paws::Backup::GetBackupSelectionOutput> instance

Returns selection metadata and a document in JSON format that specifies
a list of resources that are associated with a backup plan.


=head2 GetBackupVaultAccessPolicy

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupVaultAccessPolicy>

Returns: a L<Paws::Backup::GetBackupVaultAccessPolicyOutput> instance

Returns the access policy document that is associated with the named
backup vault.


=head2 GetBackupVaultNotifications

=over

=item BackupVaultName => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetBackupVaultNotifications>

Returns: a L<Paws::Backup::GetBackupVaultNotificationsOutput> instance

Returns event notifications for the specified backup vault.


=head2 GetRecoveryPointRestoreMetadata

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str


=back

Each argument is described in detail in: L<Paws::Backup::GetRecoveryPointRestoreMetadata>

Returns: a L<Paws::Backup::GetRecoveryPointRestoreMetadataOutput> instance

Returns two sets of metadata key-value pairs. The first set lists the
metadata that the recovery point was created with. The second set lists
the metadata key-value pairs that are required to restore the recovery
point.

These sets can be the same, or the restore metadata set can contain
different values if the target service to be restored has changed since
the recovery point was created and now requires additional or different
information in order to be restored.


=head2 GetSupportedResourceTypes

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Backup::GetSupportedResourceTypes>

Returns: a L<Paws::Backup::GetSupportedResourceTypesOutput> instance

Returns the AWS resource types supported by AWS Backup.


=head2 ListBackupJobs

=over

=item [ByBackupVaultName => Str]

=item [ByCreatedAfter => Str]

=item [ByCreatedBefore => Str]

=item [ByResourceArn => Str]

=item [ByResourceType => Str]

=item [ByState => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupJobs>

Returns: a L<Paws::Backup::ListBackupJobsOutput> instance

Returns metadata about your backup jobs.


=head2 ListBackupPlans

=over

=item [IncludeDeleted => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupPlans>

Returns: a L<Paws::Backup::ListBackupPlansOutput> instance

Returns metadata of your saved backup plans, including Amazon Resource
Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan
names, and creator request IDs.


=head2 ListBackupPlanTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupPlanTemplates>

Returns: a L<Paws::Backup::ListBackupPlanTemplatesOutput> instance

Returns metadata of your saved backup plan templates, including the
template ID, name, and the creation and deletion dates.


=head2 ListBackupPlanVersions

=over

=item BackupPlanId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupPlanVersions>

Returns: a L<Paws::Backup::ListBackupPlanVersionsOutput> instance

Returns version metadata of your backup plans, including Amazon
Resource Names (ARNs), backup plan IDs, creation and deletion dates,
plan names, and version IDs.


=head2 ListBackupSelections

=over

=item BackupPlanId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupSelections>

Returns: a L<Paws::Backup::ListBackupSelectionsOutput> instance

Returns an array containing metadata of the resources associated with
the target backup plan.


=head2 ListBackupVaults

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListBackupVaults>

Returns: a L<Paws::Backup::ListBackupVaultsOutput> instance

Returns a list of recovery point storage containers along with
information about them.


=head2 ListProtectedResources

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListProtectedResources>

Returns: a L<Paws::Backup::ListProtectedResourcesOutput> instance

Returns an array of resources successfully backed up by AWS Backup,
including the time the resource was saved, an Amazon Resource Name
(ARN) of the resource, and a resource type.


=head2 ListRecoveryPointsByBackupVault

=over

=item BackupVaultName => Str

=item [ByBackupPlanId => Str]

=item [ByCreatedAfter => Str]

=item [ByCreatedBefore => Str]

=item [ByResourceArn => Str]

=item [ByResourceType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListRecoveryPointsByBackupVault>

Returns: a L<Paws::Backup::ListRecoveryPointsByBackupVaultOutput> instance

Returns detailed information about the recovery points stored in a
backup vault.


=head2 ListRecoveryPointsByResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListRecoveryPointsByResource>

Returns: a L<Paws::Backup::ListRecoveryPointsByResourceOutput> instance

Returns detailed information about recovery points of the type
specified by a resource Amazon Resource Name (ARN).


=head2 ListRestoreJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListRestoreJobs>

Returns: a L<Paws::Backup::ListRestoreJobsOutput> instance

Returns a list of jobs that AWS Backup initiated to restore a saved
resource, including metadata about the recovery process.


=head2 ListTags

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Backup::ListTags>

Returns: a L<Paws::Backup::ListTagsOutput> instance

Returns a list of key-value pairs assigned to a target recovery point,
backup plan, or backup vault.


=head2 PutBackupVaultAccessPolicy

=over

=item BackupVaultName => Str

=item [Policy => Str]


=back

Each argument is described in detail in: L<Paws::Backup::PutBackupVaultAccessPolicy>

Returns: nothing

Sets a resource-based policy that is used to manage access permissions
on the target backup vault. Requires a backup vault name and an access
policy document in JSON format.


=head2 PutBackupVaultNotifications

=over

=item BackupVaultEvents => ArrayRef[Str|Undef]

=item BackupVaultName => Str

=item SNSTopicArn => Str


=back

Each argument is described in detail in: L<Paws::Backup::PutBackupVaultNotifications>

Returns: nothing

Turns on notifications on a backup vault for the specified topic and
events.


=head2 StartBackupJob

=over

=item BackupVaultName => Str

=item IamRoleArn => Str

=item ResourceArn => Str

=item [CompleteWindowMinutes => Int]

=item [IdempotencyToken => Str]

=item [Lifecycle => L<Paws::Backup::Lifecycle>]

=item [RecoveryPointTags => L<Paws::Backup::Tags>]

=item [StartWindowMinutes => Int]


=back

Each argument is described in detail in: L<Paws::Backup::StartBackupJob>

Returns: a L<Paws::Backup::StartBackupJobOutput> instance

Starts a job to create a one-time backup of the specified resource.


=head2 StartRestoreJob

=over

=item IamRoleArn => Str

=item Metadata => L<Paws::Backup::Metadata>

=item RecoveryPointArn => Str

=item [IdempotencyToken => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Backup::StartRestoreJob>

Returns: a L<Paws::Backup::StartRestoreJobOutput> instance

Recovers the saved resource identified by an Amazon Resource Name
(ARN).

If the resource ARN is included in the request, then the last complete
backup of that resource is recovered. If the ARN of a recovery point is
supplied, then that recovery point is restored.


=head2 StopBackupJob

=over

=item BackupJobId => Str


=back

Each argument is described in detail in: L<Paws::Backup::StopBackupJob>

Returns: nothing

Attempts to cancel a job to create a one-time backup of a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Backup::Tags>


=back

Each argument is described in detail in: L<Paws::Backup::TagResource>

Returns: nothing

Assigns a set of key-value pairs to a recovery point, backup plan, or
backup vault identified by an Amazon Resource Name (ARN).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeyList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Backup::UntagResource>

Returns: nothing

Removes a set of key-value pairs from a recovery point, backup plan, or
backup vault identified by an Amazon Resource Name (ARN)


=head2 UpdateBackupPlan

=over

=item BackupPlan => L<Paws::Backup::BackupPlanInput>

=item BackupPlanId => Str


=back

Each argument is described in detail in: L<Paws::Backup::UpdateBackupPlan>

Returns: a L<Paws::Backup::UpdateBackupPlanOutput> instance

Replaces the body of a saved backup plan identified by its
C<backupPlanId> with the input document in JSON format. The new version
is uniquely identified by a C<VersionId>.


=head2 UpdateRecoveryPointLifecycle

=over

=item BackupVaultName => Str

=item RecoveryPointArn => Str

=item [Lifecycle => L<Paws::Backup::Lifecycle>]


=back

Each argument is described in detail in: L<Paws::Backup::UpdateRecoveryPointLifecycle>

Returns: a L<Paws::Backup::UpdateRecoveryPointLifecycleOutput> instance

Sets the transition lifecycle of a recovery point.

The lifecycle defines when a protected resource is transitioned to cold
storage and when it expires. AWS Backup transitions and expires backups
automatically according to the lifecycle that you define.

Backups transitioned to cold storage must be stored in cold storage for
a minimum of 90 days. Therefore, the E<ldquo>expire after daysE<rdquo>
setting must be 90 days greater than the E<ldquo>transition to cold
after daysE<rdquo> setting. The E<ldquo>transition to cold after
daysE<rdquo> setting cannot be changed after a backup has been
transitioned to cold.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

