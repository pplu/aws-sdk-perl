package Paws::SecurityHub::AwsSecurityFinding;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', required => 1);
  has Compliance => (is => 'ro', isa => 'Paws::SecurityHub::Compliance');
  has Confidence => (is => 'ro', isa => 'Int');
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has Criticality => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has FirstObservedAt => (is => 'ro', isa => 'Str');
  has GeneratorId => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastObservedAt => (is => 'ro', isa => 'Str');
  has Malware => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Malware]');
  has Network => (is => 'ro', isa => 'Paws::SecurityHub::Network');
  has Note => (is => 'ro', isa => 'Paws::SecurityHub::Note');
  has Process => (is => 'ro', isa => 'Paws::SecurityHub::ProcessDetails');
  has ProductArn => (is => 'ro', isa => 'Str', required => 1);
  has ProductFields => (is => 'ro', isa => 'Paws::SecurityHub::FieldMap');
  has RecordState => (is => 'ro', isa => 'Str');
  has RelatedFindings => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::RelatedFinding]');
  has Remediation => (is => 'ro', isa => 'Paws::SecurityHub::Remediation');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Resource]', required => 1);
  has SchemaVersion => (is => 'ro', isa => 'Str', required => 1);
  has Severity => (is => 'ro', isa => 'Paws::SecurityHub::Severity', required => 1);
  has SourceUrl => (is => 'ro', isa => 'Str');
  has ThreatIntelIndicators => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::ThreatIntelIndicator]');
  has Title => (is => 'ro', isa => 'Str');
  has Types => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', required => 1);
  has UserDefinedFields => (is => 'ro', isa => 'Paws::SecurityHub::FieldMap');
  has VerificationState => (is => 'ro', isa => 'Str');
  has WorkflowState => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsSecurityFinding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsSecurityFinding object:

  $service_obj->Method(Att1 => { AwsAccountId => $value, ..., WorkflowState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsSecurityFinding object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccountId

=head1 DESCRIPTION

Provides consistent format for the contents of the Security
Hub-aggregated findings. AwsSecurityFinding format enables you to share
findings between AWS security services and third-party solutions, and
compliance checks.

A finding is a potential security issue generated either by AWS
services (GuardDuty, Inspector, Macie) or by the integrated third-party
solutions and compliance checks.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

  The AWS account ID in which a finding is generated.


=head2 Compliance => L<Paws::SecurityHub::Compliance>

  This data type is exclusive to findings that are generated as the
result of a check run against a specific rule in a supported standard
(for example, AWS CIS Foundations). Contains compliance-related finding
details.


=head2 Confidence => Int

  A finding's confidence. Confidence is defined as the likelihood that a
finding accurately identifies the behavior or issue that it was
intended to identify. Confidence is scored on a 0-100 basis using a
ratio scale. 0 equates zero percent confidence and 100 equates to 100
percent confidence.


=head2 B<REQUIRED> CreatedAt => Str

  An ISO8601-formatted timestamp that indicates when the potential
security issue captured by a finding was created by the security
findings provider.


=head2 Criticality => Int

  The level of importance assigned to the resources associated with the
finding. A score of 0 means the underlying resources have no
criticality, and a score of 100 is reserved for the most critical
resources.


=head2 Description => Str

  A finding's description.


=head2 FirstObservedAt => Str

  An ISO8601-formatted timestamp that indicates when the potential
security issue captured by a finding was first observed by the security
findings provider.


=head2 B<REQUIRED> GeneratorId => Str

  This is the identifier for the solution-specific component (a discrete
unit of logic) that generated a finding. In various security findings
provider's solutions, this generator can be called a rule, a check, a
detector, a plug-in, etc.


=head2 B<REQUIRED> Id => Str

  The security findings provider-specific identifier for a finding.


=head2 LastObservedAt => Str

  An ISO8601-formatted timestamp that indicates when the potential
security issue captured by a finding was most recently observed by the
security findings provider.


=head2 Malware => ArrayRef[L<Paws::SecurityHub::Malware>]

  A list of malware related to a finding.


=head2 Network => L<Paws::SecurityHub::Network>

  The details of network-related information about a finding.


=head2 Note => L<Paws::SecurityHub::Note>

  A user-defined note added to a finding.


=head2 Process => L<Paws::SecurityHub::ProcessDetails>

  The details of process-related information about a finding.


=head2 B<REQUIRED> ProductArn => Str

  The ARN generated by Security Hub that uniquely identifies a
third-party company (security findings provider) once this provider's
product (solution that generates findings) is registered with Security
Hub.


=head2 ProductFields => L<Paws::SecurityHub::FieldMap>

  A data type where security findings providers can include additional
solution-specific details that are not part of the defined
AwsSecurityFinding format.


=head2 RecordState => Str

  The record state of a finding.


=head2 RelatedFindings => ArrayRef[L<Paws::SecurityHub::RelatedFinding>]

  A list of related findings.


=head2 Remediation => L<Paws::SecurityHub::Remediation>

  An data type that describes the remediation options for a finding.


=head2 B<REQUIRED> Resources => ArrayRef[L<Paws::SecurityHub::Resource>]

  A set of resource data types that describe the resources to which the
finding refers.


=head2 B<REQUIRED> SchemaVersion => Str

  The schema version for which a finding is formatted.


=head2 B<REQUIRED> Severity => L<Paws::SecurityHub::Severity>

  A finding's severity.


=head2 SourceUrl => Str

  A URL that links to a page about the current finding in the security
findings provider's solution.


=head2 ThreatIntelIndicators => ArrayRef[L<Paws::SecurityHub::ThreatIntelIndicator>]

  Threat intel details related to a finding.


=head2 Title => Str

  A finding's title.


=head2 B<REQUIRED> Types => ArrayRef[Str|Undef]

  One or more finding types in the format of
'namespace/category/classifier' that classify a finding.

Valid namespace values are: Software and Configuration Checks | TTPs |
Effects | Unusual Behaviors | Sensitive Data Identifications


=head2 B<REQUIRED> UpdatedAt => Str

  An ISO8601-formatted timestamp that indicates when the finding record
was last updated by the security findings provider.


=head2 UserDefinedFields => L<Paws::SecurityHub::FieldMap>

  A list of name/value string pairs associated with the finding. These
are custom, user-defined fields added to a finding.


=head2 VerificationState => Str

  Indicates the veracity of a finding.


=head2 WorkflowState => Str

  The workflow state of a finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

