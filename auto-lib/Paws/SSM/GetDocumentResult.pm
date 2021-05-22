
package Paws::SSM::GetDocumentResult;
  use Moose;
  has AttachmentsContent => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AttachmentContent]');
  has Content => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has DocumentFormat => (is => 'ro', isa => 'Str');
  has DocumentType => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Requires => (is => 'ro', isa => 'ArrayRef[Paws::SSM::DocumentRequires]');
  has ReviewStatus => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusInformation => (is => 'ro', isa => 'Str');
  has VersionName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetDocumentResult

=head1 ATTRIBUTES


=head2 AttachmentsContent => ArrayRef[L<Paws::SSM::AttachmentContent>]

A description of the document attachments, including names, locations,
sizes, and so on.


=head2 Content => Str

The contents of the Systems Manager document.


=head2 CreatedDate => Str

The date the Systems Manager document was created.


=head2 DisplayName => Str

The friendly name of the Systems Manager document. This value can
differ for each version of the document. If you want to update this
value, see UpdateDocument.


=head2 DocumentFormat => Str

The document format, either JSON or YAML.

Valid values are: C<"YAML">, C<"JSON">, C<"TEXT">
=head2 DocumentType => Str

The document type.

Valid values are: C<"Command">, C<"Policy">, C<"Automation">, C<"Session">, C<"Package">, C<"ApplicationConfiguration">, C<"ApplicationConfigurationSchema">, C<"DeploymentStrategy">, C<"ChangeCalendar">, C<"Automation.ChangeTemplate">, C<"ProblemAnalysis">, C<"ProblemAnalysisTemplate">
=head2 DocumentVersion => Str

The document version.


=head2 Name => Str

The name of the Systems Manager document.


=head2 Requires => ArrayRef[L<Paws::SSM::DocumentRequires>]

A list of SSM documents required by a document. For example, an
C<ApplicationConfiguration> document requires an
C<ApplicationConfigurationSchema> document.


=head2 ReviewStatus => Str

The current review status of a new custom Systems Manager document (SSM
document) created by a member of your organization, or of the latest
version of an existing SSM document.

Only one version of an SSM document can be in the APPROVED state at a
time. When a new version is approved, the status of the previous
version changes to REJECTED.

Only one version of an SSM document can be in review, or PENDING, at a
time.

Valid values are: C<"APPROVED">, C<"NOT_REVIEWED">, C<"PENDING">, C<"REJECTED">
=head2 Status => Str

The status of the Systems Manager document, such as C<Creating>,
C<Active>, C<Updating>, C<Failed>, and C<Deleting>.

Valid values are: C<"Creating">, C<"Active">, C<"Updating">, C<"Deleting">, C<"Failed">
=head2 StatusInformation => Str

A message returned by AWS Systems Manager that explains the C<Status>
value. For example, a C<Failed> status might be explained by the
C<StatusInformation> message, "The specified S3 bucket does not exist.
Verify that the URL of the S3 bucket is correct."


=head2 VersionName => Str

The version of the artifact associated with the document. For example,
"Release 12, Update 6". This value is unique across all versions of a
document, and cannot be changed.


=head2 _request_id => Str


=cut

1;