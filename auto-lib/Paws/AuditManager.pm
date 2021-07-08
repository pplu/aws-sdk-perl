package Paws::AuditManager;
  use Moose;
  sub service { 'auditmanager' }
  sub signing_name { 'auditmanager' }
  sub version { '2017-07-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateAssessmentReportEvidenceFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::AssociateAssessmentReportEvidenceFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchAssociateAssessmentReportEvidence {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::BatchAssociateAssessmentReportEvidence', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchCreateDelegationByAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::BatchCreateDelegationByAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteDelegationByAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::BatchDeleteDelegationByAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateAssessmentReportEvidence {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::BatchDisassociateAssessmentReportEvidence', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchImportEvidenceToAssessmentControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::BatchImportEvidenceToAssessmentControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::CreateAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssessmentFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::CreateAssessmentFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssessmentReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::CreateAssessmentReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::CreateControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeleteAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssessmentFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeleteAssessmentFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssessmentReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeleteAssessmentReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeleteControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeregisterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeregisterOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAssessmentReportEvidenceFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DisassociateAssessmentReportEvidenceFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetAccountStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssessmentFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetAssessmentFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssessmentReportUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetAssessmentReportUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChangeLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetChangeLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDelegations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetDelegations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvidence {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetEvidence', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvidenceByEvidenceFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetEvidenceByEvidenceFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvidenceFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetEvidenceFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvidenceFoldersByAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetEvidenceFoldersByAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvidenceFoldersByAssessmentControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetEvidenceFoldersByAssessmentControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServicesInScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetServicesInScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessmentFrameworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListAssessmentFrameworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessmentReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListAssessmentReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListAssessments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeywordsForDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListKeywordsForDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::RegisterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::RegisterOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessmentControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateAssessmentControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessmentControlSetStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateAssessmentControlSetStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessmentFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateAssessmentFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessmentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateAssessmentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateAssessmentReportIntegrity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ValidateAssessmentReportIntegrity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateAssessmentReportEvidenceFolder BatchAssociateAssessmentReportEvidence BatchCreateDelegationByAssessment BatchDeleteDelegationByAssessment BatchDisassociateAssessmentReportEvidence BatchImportEvidenceToAssessmentControl CreateAssessment CreateAssessmentFramework CreateAssessmentReport CreateControl DeleteAssessment DeleteAssessmentFramework DeleteAssessmentReport DeleteControl DeregisterAccount DeregisterOrganizationAdminAccount DisassociateAssessmentReportEvidenceFolder GetAccountStatus GetAssessment GetAssessmentFramework GetAssessmentReportUrl GetChangeLogs GetControl GetDelegations GetEvidence GetEvidenceByEvidenceFolder GetEvidenceFolder GetEvidenceFoldersByAssessment GetEvidenceFoldersByAssessmentControl GetOrganizationAdminAccount GetServicesInScope GetSettings ListAssessmentFrameworks ListAssessmentReports ListAssessments ListControls ListKeywordsForDataSource ListNotifications ListTagsForResource RegisterAccount RegisterOrganizationAdminAccount TagResource UntagResource UpdateAssessment UpdateAssessmentControl UpdateAssessmentControlSetStatus UpdateAssessmentFramework UpdateAssessmentStatus UpdateControl UpdateSettings ValidateAssessmentReportIntegrity / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager - Perl Interface to AWS AWS Audit Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AuditManager');
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

Welcome to the AWS Audit Manager API reference. This guide is for
developers who need detailed information about the AWS Audit Manager
API operations, data types, and errors.

AWS Audit Manager is a service that provides automated evidence
collection so that you can continuously audit your AWS usage, and
assess the effectiveness of your controls to better manage risk and
simplify compliance.

AWS Audit Manager provides pre-built frameworks that structure and
automate assessments for a given compliance standard. Frameworks
include a pre-built collection of controls with descriptions and
testing procedures, which are grouped according to the requirements of
the specified compliance standard or regulation. You can also customize
frameworks and controls to support internal audits with unique
requirements.

Use the following links to get started with the AWS Audit Manager API:

=over

=item *

Actions
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html):
An alphabetical list of all AWS Audit Manager API operations.

=item *

Data types
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html):
An alphabetical list of all AWS Audit Manager data types.

=item *

Common parameters
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html):
Parameters that all Query operations can use.

=item *

Common errors
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html):
Client and server errors that all operations can return.

=back

If you're new to AWS Audit Manager, we recommend that you review the
AWS Audit Manager User Guide
(https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25>


=head1 METHODS

=head2 AssociateAssessmentReportEvidenceFolder

=over

=item AssessmentId => Str

=item EvidenceFolderId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::AssociateAssessmentReportEvidenceFolder>

Returns: a L<Paws::AuditManager::AssociateAssessmentReportEvidenceFolderResponse> instance

Associates an evidence folder to the specified assessment report in AWS
Audit Manager.


=head2 BatchAssociateAssessmentReportEvidence

=over

=item AssessmentId => Str

=item EvidenceFolderId => Str

=item EvidenceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AuditManager::BatchAssociateAssessmentReportEvidence>

Returns: a L<Paws::AuditManager::BatchAssociateAssessmentReportEvidenceResponse> instance

Associates a list of evidence to an assessment report in an AWS Audit
Manager assessment.


=head2 BatchCreateDelegationByAssessment

=over

=item AssessmentId => Str

=item CreateDelegationRequests => ArrayRef[L<Paws::AuditManager::CreateDelegationRequest>]


=back

Each argument is described in detail in: L<Paws::AuditManager::BatchCreateDelegationByAssessment>

Returns: a L<Paws::AuditManager::BatchCreateDelegationByAssessmentResponse> instance

Create a batch of delegations for a specified assessment in AWS Audit
Manager.


=head2 BatchDeleteDelegationByAssessment

=over

=item AssessmentId => Str

=item DelegationIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AuditManager::BatchDeleteDelegationByAssessment>

Returns: a L<Paws::AuditManager::BatchDeleteDelegationByAssessmentResponse> instance

Deletes the delegations in the specified AWS Audit Manager assessment.


=head2 BatchDisassociateAssessmentReportEvidence

=over

=item AssessmentId => Str

=item EvidenceFolderId => Str

=item EvidenceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AuditManager::BatchDisassociateAssessmentReportEvidence>

Returns: a L<Paws::AuditManager::BatchDisassociateAssessmentReportEvidenceResponse> instance

Disassociates a list of evidence from the specified assessment report
in AWS Audit Manager.


=head2 BatchImportEvidenceToAssessmentControl

=over

=item AssessmentId => Str

=item ControlId => Str

=item ControlSetId => Str

=item ManualEvidence => ArrayRef[L<Paws::AuditManager::ManualEvidence>]


=back

Each argument is described in detail in: L<Paws::AuditManager::BatchImportEvidenceToAssessmentControl>

Returns: a L<Paws::AuditManager::BatchImportEvidenceToAssessmentControlResponse> instance

Uploads one or more pieces of evidence to the specified control in the
assessment in AWS Audit Manager.


=head2 CreateAssessment

=over

=item AssessmentReportsDestination => L<Paws::AuditManager::AssessmentReportsDestination>

=item FrameworkId => Str

=item Name => Str

=item Roles => ArrayRef[L<Paws::AuditManager::Role>]

=item Scope => L<Paws::AuditManager::Scope>

=item [Description => Str]

=item [Tags => L<Paws::AuditManager::TagMap>]


=back

Each argument is described in detail in: L<Paws::AuditManager::CreateAssessment>

Returns: a L<Paws::AuditManager::CreateAssessmentResponse> instance

Creates an assessment in AWS Audit Manager.


=head2 CreateAssessmentFramework

=over

=item ControlSets => ArrayRef[L<Paws::AuditManager::CreateAssessmentFrameworkControlSet>]

=item Name => Str

=item [ComplianceType => Str]

=item [Description => Str]

=item [Tags => L<Paws::AuditManager::TagMap>]


=back

Each argument is described in detail in: L<Paws::AuditManager::CreateAssessmentFramework>

Returns: a L<Paws::AuditManager::CreateAssessmentFrameworkResponse> instance

Creates a custom framework in AWS Audit Manager.


=head2 CreateAssessmentReport

=over

=item AssessmentId => Str

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::CreateAssessmentReport>

Returns: a L<Paws::AuditManager::CreateAssessmentReportResponse> instance

Creates an assessment report for the specified assessment.


=head2 CreateControl

=over

=item ControlMappingSources => ArrayRef[L<Paws::AuditManager::CreateControlMappingSource>]

=item Name => Str

=item [ActionPlanInstructions => Str]

=item [ActionPlanTitle => Str]

=item [Description => Str]

=item [Tags => L<Paws::AuditManager::TagMap>]

=item [TestingInformation => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::CreateControl>

Returns: a L<Paws::AuditManager::CreateControlResponse> instance

Creates a new custom control in AWS Audit Manager.


=head2 DeleteAssessment

=over

=item AssessmentId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::DeleteAssessment>

Returns: a L<Paws::AuditManager::DeleteAssessmentResponse> instance

Deletes an assessment in AWS Audit Manager.


=head2 DeleteAssessmentFramework

=over

=item FrameworkId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::DeleteAssessmentFramework>

Returns: a L<Paws::AuditManager::DeleteAssessmentFrameworkResponse> instance

Deletes a custom framework in AWS Audit Manager.


=head2 DeleteAssessmentReport

=over

=item AssessmentId => Str

=item AssessmentReportId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::DeleteAssessmentReport>

Returns: a L<Paws::AuditManager::DeleteAssessmentReportResponse> instance

Deletes an assessment report from an assessment in AWS Audit Manager.


=head2 DeleteControl

=over

=item ControlId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::DeleteControl>

Returns: a L<Paws::AuditManager::DeleteControlResponse> instance

Deletes a custom control in AWS Audit Manager.


=head2 DeregisterAccount






Each argument is described in detail in: L<Paws::AuditManager::DeregisterAccount>

Returns: a L<Paws::AuditManager::DeregisterAccountResponse> instance

Deregisters an account in AWS Audit Manager.


=head2 DeregisterOrganizationAdminAccount

=over

=item [AdminAccountId => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::DeregisterOrganizationAdminAccount>

Returns: a L<Paws::AuditManager::DeregisterOrganizationAdminAccountResponse> instance

Deregisters the delegated AWS administrator account from the AWS
organization.


=head2 DisassociateAssessmentReportEvidenceFolder

=over

=item AssessmentId => Str

=item EvidenceFolderId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::DisassociateAssessmentReportEvidenceFolder>

Returns: a L<Paws::AuditManager::DisassociateAssessmentReportEvidenceFolderResponse> instance

Disassociates an evidence folder from the specified assessment report
in AWS Audit Manager.


=head2 GetAccountStatus






Each argument is described in detail in: L<Paws::AuditManager::GetAccountStatus>

Returns: a L<Paws::AuditManager::GetAccountStatusResponse> instance

Returns the registration status of an account in AWS Audit Manager.


=head2 GetAssessment

=over

=item AssessmentId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetAssessment>

Returns: a L<Paws::AuditManager::GetAssessmentResponse> instance

Returns an assessment from AWS Audit Manager.


=head2 GetAssessmentFramework

=over

=item FrameworkId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetAssessmentFramework>

Returns: a L<Paws::AuditManager::GetAssessmentFrameworkResponse> instance

Returns a framework from AWS Audit Manager.


=head2 GetAssessmentReportUrl

=over

=item AssessmentId => Str

=item AssessmentReportId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetAssessmentReportUrl>

Returns: a L<Paws::AuditManager::GetAssessmentReportUrlResponse> instance

Returns the URL of a specified assessment report in AWS Audit Manager.


=head2 GetChangeLogs

=over

=item AssessmentId => Str

=item [ControlId => Str]

=item [ControlSetId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::GetChangeLogs>

Returns: a L<Paws::AuditManager::GetChangeLogsResponse> instance

Returns a list of changelogs from AWS Audit Manager.


=head2 GetControl

=over

=item ControlId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetControl>

Returns: a L<Paws::AuditManager::GetControlResponse> instance

Returns a control from AWS Audit Manager.


=head2 GetDelegations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::GetDelegations>

Returns: a L<Paws::AuditManager::GetDelegationsResponse> instance

Returns a list of delegations from an audit owner to a delegate.


=head2 GetEvidence

=over

=item AssessmentId => Str

=item ControlSetId => Str

=item EvidenceFolderId => Str

=item EvidenceId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetEvidence>

Returns: a L<Paws::AuditManager::GetEvidenceResponse> instance

Returns evidence from AWS Audit Manager.


=head2 GetEvidenceByEvidenceFolder

=over

=item AssessmentId => Str

=item ControlSetId => Str

=item EvidenceFolderId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::GetEvidenceByEvidenceFolder>

Returns: a L<Paws::AuditManager::GetEvidenceByEvidenceFolderResponse> instance

Returns all evidence from a specified evidence folder in AWS Audit
Manager.


=head2 GetEvidenceFolder

=over

=item AssessmentId => Str

=item ControlSetId => Str

=item EvidenceFolderId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetEvidenceFolder>

Returns: a L<Paws::AuditManager::GetEvidenceFolderResponse> instance

Returns an evidence folder from the specified assessment in AWS Audit
Manager.


=head2 GetEvidenceFoldersByAssessment

=over

=item AssessmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::GetEvidenceFoldersByAssessment>

Returns: a L<Paws::AuditManager::GetEvidenceFoldersByAssessmentResponse> instance

Returns the evidence folders from a specified assessment in AWS Audit
Manager.


=head2 GetEvidenceFoldersByAssessmentControl

=over

=item AssessmentId => Str

=item ControlId => Str

=item ControlSetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::GetEvidenceFoldersByAssessmentControl>

Returns: a L<Paws::AuditManager::GetEvidenceFoldersByAssessmentControlResponse> instance

Returns a list of evidence folders associated with a specified control
of an assessment in AWS Audit Manager.


=head2 GetOrganizationAdminAccount






Each argument is described in detail in: L<Paws::AuditManager::GetOrganizationAdminAccount>

Returns: a L<Paws::AuditManager::GetOrganizationAdminAccountResponse> instance

Returns the name of the delegated AWS administrator account for the AWS
organization.


=head2 GetServicesInScope






Each argument is described in detail in: L<Paws::AuditManager::GetServicesInScope>

Returns: a L<Paws::AuditManager::GetServicesInScopeResponse> instance

Returns a list of the in-scope AWS services for the specified
assessment.


=head2 GetSettings

=over

=item Attribute => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetSettings>

Returns: a L<Paws::AuditManager::GetSettingsResponse> instance

Returns the settings for the specified AWS account.


=head2 ListAssessmentFrameworks

=over

=item FrameworkType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListAssessmentFrameworks>

Returns: a L<Paws::AuditManager::ListAssessmentFrameworksResponse> instance

Returns a list of the frameworks available in the AWS Audit Manager
framework library.


=head2 ListAssessmentReports

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListAssessmentReports>

Returns: a L<Paws::AuditManager::ListAssessmentReportsResponse> instance

Returns a list of assessment reports created in AWS Audit Manager.


=head2 ListAssessments

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListAssessments>

Returns: a L<Paws::AuditManager::ListAssessmentsResponse> instance

Returns a list of current and past assessments from AWS Audit Manager.


=head2 ListControls

=over

=item ControlType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListControls>

Returns: a L<Paws::AuditManager::ListControlsResponse> instance

Returns a list of controls from AWS Audit Manager.


=head2 ListKeywordsForDataSource

=over

=item Source => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListKeywordsForDataSource>

Returns: a L<Paws::AuditManager::ListKeywordsForDataSourceResponse> instance

Returns a list of keywords that pre-mapped to the specified control
data source.


=head2 ListNotifications

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListNotifications>

Returns: a L<Paws::AuditManager::ListNotificationsResponse> instance

Returns a list of all AWS Audit Manager notifications.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::ListTagsForResource>

Returns: a L<Paws::AuditManager::ListTagsForResourceResponse> instance

Returns a list of tags for the specified resource in AWS Audit Manager.


=head2 RegisterAccount

=over

=item [DelegatedAdminAccount => Str]

=item [KmsKey => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::RegisterAccount>

Returns: a L<Paws::AuditManager::RegisterAccountResponse> instance

Enables AWS Audit Manager for the specified AWS account.


=head2 RegisterOrganizationAdminAccount

=over

=item AdminAccountId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::RegisterOrganizationAdminAccount>

Returns: a L<Paws::AuditManager::RegisterOrganizationAdminAccountResponse> instance

Enables an AWS account within the organization as the delegated
administrator for AWS Audit Manager.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::AuditManager::TagMap>


=back

Each argument is described in detail in: L<Paws::AuditManager::TagResource>

Returns: a L<Paws::AuditManager::TagResourceResponse> instance

Tags the specified resource in AWS Audit Manager.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AuditManager::UntagResource>

Returns: a L<Paws::AuditManager::UntagResourceResponse> instance

Removes a tag from a resource in AWS Audit Manager.


=head2 UpdateAssessment

=over

=item AssessmentId => Str

=item Scope => L<Paws::AuditManager::Scope>

=item [AssessmentDescription => Str]

=item [AssessmentName => Str]

=item [AssessmentReportsDestination => L<Paws::AuditManager::AssessmentReportsDestination>]

=item [Roles => ArrayRef[L<Paws::AuditManager::Role>]]


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateAssessment>

Returns: a L<Paws::AuditManager::UpdateAssessmentResponse> instance

Edits an AWS Audit Manager assessment.


=head2 UpdateAssessmentControl

=over

=item AssessmentId => Str

=item ControlId => Str

=item ControlSetId => Str

=item [CommentBody => Str]

=item [ControlStatus => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateAssessmentControl>

Returns: a L<Paws::AuditManager::UpdateAssessmentControlResponse> instance

Updates a control within an assessment in AWS Audit Manager.


=head2 UpdateAssessmentControlSetStatus

=over

=item AssessmentId => Str

=item Comment => Str

=item ControlSetId => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateAssessmentControlSetStatus>

Returns: a L<Paws::AuditManager::UpdateAssessmentControlSetStatusResponse> instance

Updates the status of a control set in an AWS Audit Manager assessment.


=head2 UpdateAssessmentFramework

=over

=item ControlSets => ArrayRef[L<Paws::AuditManager::UpdateAssessmentFrameworkControlSet>]

=item FrameworkId => Str

=item Name => Str

=item [ComplianceType => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateAssessmentFramework>

Returns: a L<Paws::AuditManager::UpdateAssessmentFrameworkResponse> instance

Updates a custom framework in AWS Audit Manager.


=head2 UpdateAssessmentStatus

=over

=item AssessmentId => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateAssessmentStatus>

Returns: a L<Paws::AuditManager::UpdateAssessmentStatusResponse> instance

Updates the status of an assessment in AWS Audit Manager.


=head2 UpdateControl

=over

=item ControlId => Str

=item ControlMappingSources => ArrayRef[L<Paws::AuditManager::ControlMappingSource>]

=item Name => Str

=item [ActionPlanInstructions => Str]

=item [ActionPlanTitle => Str]

=item [Description => Str]

=item [TestingInformation => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateControl>

Returns: a L<Paws::AuditManager::UpdateControlResponse> instance

Updates a custom control in AWS Audit Manager.


=head2 UpdateSettings

=over

=item [DefaultAssessmentReportsDestination => L<Paws::AuditManager::AssessmentReportsDestination>]

=item [DefaultProcessOwners => ArrayRef[L<Paws::AuditManager::Role>]]

=item [KmsKey => Str]

=item [SnsTopic => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateSettings>

Returns: a L<Paws::AuditManager::UpdateSettingsResponse> instance

Updates AWS Audit Manager settings for the current user account.


=head2 ValidateAssessmentReportIntegrity

=over

=item S3RelativePath => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::ValidateAssessmentReportIntegrity>

Returns: a L<Paws::AuditManager::ValidateAssessmentReportIntegrityResponse> instance

Validates the integrity of an assessment report in AWS Audit Manager.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

