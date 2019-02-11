package Paws::SecurityHub::AwsSecurityFindingFilters;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has CompanyName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ComplianceStatus => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has Confidence => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::NumberFilter]');
  has CreatedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has Criticality => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::NumberFilter]');
  has Description => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has FirstObservedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has GeneratorId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has Id => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has Keyword => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::KeywordFilter]');
  has LastObservedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has MalwareName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has MalwarePath => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has MalwareState => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has MalwareType => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has NetworkDestinationDomain => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has NetworkDestinationIpV4 => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::IpFilter]');
  has NetworkDestinationIpV6 => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::IpFilter]');
  has NetworkDestinationPort => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::NumberFilter]');
  has NetworkDirection => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has NetworkProtocol => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has NetworkSourceDomain => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has NetworkSourceIpV4 => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::IpFilter]');
  has NetworkSourceIpV6 => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::IpFilter]');
  has NetworkSourceMac => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has NetworkSourcePort => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::NumberFilter]');
  has NoteText => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has NoteUpdatedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has NoteUpdatedBy => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ProcessLaunchedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has ProcessName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ProcessParentPid => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::NumberFilter]');
  has ProcessPath => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ProcessPid => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::NumberFilter]');
  has ProcessTerminatedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has ProductArn => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ProductFields => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::MapFilter]');
  has ProductName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has RecommendationText => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has RecordState => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has RelatedFindingsId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has RelatedFindingsProductArn => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceAwsEc2InstanceIamInstanceProfileArn => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceAwsEc2InstanceImageId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceAwsEc2InstanceIpV4Addresses => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::IpFilter]');
  has ResourceAwsEc2InstanceIpV6Addresses => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::IpFilter]');
  has ResourceAwsEc2InstanceKeyName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceAwsEc2InstanceLaunchedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has ResourceAwsEc2InstanceSubnetId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceAwsEc2InstanceType => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceAwsEc2InstanceVpcId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceAwsIamAccessKeyCreatedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has ResourceAwsIamAccessKeyStatus => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceAwsIamAccessKeyUserName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceAwsS3BucketOwnerId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceAwsS3BucketOwnerName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceContainerImageId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceContainerImageName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceContainerLaunchedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has ResourceContainerName => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceDetailsOther => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::MapFilter]');
  has ResourceId => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourcePartition => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceRegion => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::MapFilter]');
  has ResourceType => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has SeverityLabel => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has SeverityNormalized => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::NumberFilter]');
  has SeverityProduct => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::NumberFilter]');
  has SourceUrl => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ThreatIntelIndicatorCategory => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ThreatIntelIndicatorLastObservedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has ThreatIntelIndicatorSource => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ThreatIntelIndicatorSourceUrl => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ThreatIntelIndicatorType => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has ThreatIntelIndicatorValue => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has Title => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has Type => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has UpdatedAt => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::DateFilter]');
  has UserDefinedFields => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::MapFilter]');
  has VerificationState => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
  has WorkflowState => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StringFilter]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsSecurityFindingFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsSecurityFindingFilters object:

  $service_obj->Method(Att1 => { AwsAccountId => $value, ..., WorkflowState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsSecurityFindingFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccountId

=head1 DESCRIPTION

A collection of attributes that are applied to all active Security
Hub-aggregated findings and that result in a subset of findings that
are included in this insight.

=head1 ATTRIBUTES


=head2 AwsAccountId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The AWS account ID in which a finding is generated.


=head2 CompanyName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The name of the findings provider (company) that owns the solution
(product) that generates findings.


=head2 ComplianceStatus => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  Exclusive to findings that are generated as the result of a check run
against a specific rule in a supported standard (for example, AWS CIS
Foundations). Contains compliance-related finding details.


=head2 Confidence => ArrayRef[L<Paws::SecurityHub::NumberFilter>]

  A finding's confidence. Confidence is defined as the likelihood that a
finding accurately identifies the behavior or issue that it was
intended to identify. Confidence is scored on a 0-100 basis using a
ratio scale. 0 equates zero percent confidence and 100 equates to 100
percent confidence.


=head2 CreatedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

  An ISO8601-formatted timestamp that indicates when the potential
security issue captured by a finding was created by the security
findings provider.


=head2 Criticality => ArrayRef[L<Paws::SecurityHub::NumberFilter>]

  The level of importance assigned to the resources associated with the
finding. A score of 0 means the underlying resources have no
criticality, and a score of 100 is reserved for the most critical
resources.


=head2 Description => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  A finding's description.


=head2 FirstObservedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

  An ISO8601-formatted timestamp that indicates when the potential
security issue captured by a finding was first observed by the security
findings provider.


=head2 GeneratorId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  This is the identifier for the solution-specific component (a discrete
unit of logic) that generated a finding. In various security findings
provider's solutions, this generator can be called a rule, a check, a
detector, a plug-in, etc.


=head2 Id => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The security findings provider-specific identifier for a finding.


=head2 Keyword => ArrayRef[L<Paws::SecurityHub::KeywordFilter>]

  A keyword for a finding.


=head2 LastObservedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

  An ISO8601-formatted timestamp that indicates when the potential
security issue captured by a finding was most recently observed by the
security findings provider.


=head2 MalwareName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The name of the malware that was observed.


=head2 MalwarePath => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The filesystem path of the malware that was observed.


=head2 MalwareState => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The state of the malware that was observed.


=head2 MalwareType => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The type of the malware that was observed.


=head2 NetworkDestinationDomain => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The destination domain of network-related information about a finding.


=head2 NetworkDestinationIpV4 => ArrayRef[L<Paws::SecurityHub::IpFilter>]

  The destination IPv4 address of network-related information about a
finding.


=head2 NetworkDestinationIpV6 => ArrayRef[L<Paws::SecurityHub::IpFilter>]

  The destination IPv6 address of network-related information about a
finding.


=head2 NetworkDestinationPort => ArrayRef[L<Paws::SecurityHub::NumberFilter>]

  The destination port of network-related information about a finding.


=head2 NetworkDirection => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  Indicates the direction of network traffic associated with a finding.


=head2 NetworkProtocol => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The protocol of network-related information about a finding.


=head2 NetworkSourceDomain => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The source domain of network-related information about a finding.


=head2 NetworkSourceIpV4 => ArrayRef[L<Paws::SecurityHub::IpFilter>]

  The source IPv4 address of network-related information about a finding.


=head2 NetworkSourceIpV6 => ArrayRef[L<Paws::SecurityHub::IpFilter>]

  The source IPv6 address of network-related information about a finding.


=head2 NetworkSourceMac => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The source media access control (MAC) address of network-related
information about a finding.


=head2 NetworkSourcePort => ArrayRef[L<Paws::SecurityHub::NumberFilter>]

  The source port of network-related information about a finding.


=head2 NoteText => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The text of a note.


=head2 NoteUpdatedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

  The timestamp of when the note was updated.


=head2 NoteUpdatedBy => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The principal that created a note.


=head2 ProcessLaunchedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

  The date/time that the process was launched.


=head2 ProcessName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The name of the process.


=head2 ProcessParentPid => ArrayRef[L<Paws::SecurityHub::NumberFilter>]

  The parent process ID.


=head2 ProcessPath => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The path to the process executable.


=head2 ProcessPid => ArrayRef[L<Paws::SecurityHub::NumberFilter>]

  The process ID.


=head2 ProcessTerminatedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

  The date/time that the process was terminated.


=head2 ProductArn => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The ARN generated by Security Hub that uniquely identifies a
third-party company (security findings provider) once this provider's
product (solution that generates findings) is registered with Security
Hub.


=head2 ProductFields => ArrayRef[L<Paws::SecurityHub::MapFilter>]

  A data type where security findings providers can include additional
solution-specific details that are not part of the defined
AwsSecurityFinding format.


=head2 ProductName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The name of the solution (product) that generates findings.


=head2 RecommendationText => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The recommendation of what to do about the issue described in a
finding.


=head2 RecordState => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The updated record state for the finding.


=head2 RelatedFindingsId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The solution-generated identifier for a related finding.


=head2 RelatedFindingsProductArn => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The ARN of the solution that generated a related finding.


=head2 ResourceAwsEc2InstanceIamInstanceProfileArn => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The IAM profile ARN of the instance.


=head2 ResourceAwsEc2InstanceImageId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The Amazon Machine Image (AMI) ID of the instance.


=head2 ResourceAwsEc2InstanceIpV4Addresses => ArrayRef[L<Paws::SecurityHub::IpFilter>]

  The IPv4 addresses associated with the instance.


=head2 ResourceAwsEc2InstanceIpV6Addresses => ArrayRef[L<Paws::SecurityHub::IpFilter>]

  The IPv6 addresses associated with the instance.


=head2 ResourceAwsEc2InstanceKeyName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The key name associated with the instance.


=head2 ResourceAwsEc2InstanceLaunchedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

  The date/time the instance was launched.


=head2 ResourceAwsEc2InstanceSubnetId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The identifier of the subnet in which the instance was launched.


=head2 ResourceAwsEc2InstanceType => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The instance type of the instance.


=head2 ResourceAwsEc2InstanceVpcId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The identifier of the VPC in which the instance was launched.


=head2 ResourceAwsIamAccessKeyCreatedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

  The creation date/time of the IAM access key related to a finding.


=head2 ResourceAwsIamAccessKeyStatus => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The status of the IAM access key related to a finding.


=head2 ResourceAwsIamAccessKeyUserName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The user associated with the IAM access key related to a finding.


=head2 ResourceAwsS3BucketOwnerId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The canonical user ID of the owner of the S3 bucket.


=head2 ResourceAwsS3BucketOwnerName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The display name of the owner of the S3 bucket.


=head2 ResourceContainerImageId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The identifier of the image related to a finding.


=head2 ResourceContainerImageName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The name of the image related to a finding.


=head2 ResourceContainerLaunchedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

  The date/time that the container was started.


=head2 ResourceContainerName => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The name of the container related to a finding.


=head2 ResourceDetailsOther => ArrayRef[L<Paws::SecurityHub::MapFilter>]

  The details of a resource that does not have a specific sub-field for
the resource type defined.


=head2 ResourceId => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The canonical identifier for the given resource type.


=head2 ResourcePartition => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The canonical AWS partition name to which the region is assigned.


=head2 ResourceRegion => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The canonical AWS external region name where this resource is located.


=head2 ResourceTags => ArrayRef[L<Paws::SecurityHub::MapFilter>]

  A list of AWS tags associated with a resource at the time the finding
was processed.


=head2 ResourceType => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  Specifies the type of the resource for which details are provided.


=head2 SeverityLabel => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The label of a finding's severity.


=head2 SeverityNormalized => ArrayRef[L<Paws::SecurityHub::NumberFilter>]

  The normalized severity of a finding.


=head2 SeverityProduct => ArrayRef[L<Paws::SecurityHub::NumberFilter>]

  The native severity as defined by the security findings provider's
solution that generated the finding.


=head2 SourceUrl => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  A URL that links to a page about the current finding in the security
findings provider's solution.


=head2 ThreatIntelIndicatorCategory => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The category of a threat intel indicator.


=head2 ThreatIntelIndicatorLastObservedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

  The date/time of the last observation of a threat intel indicator.


=head2 ThreatIntelIndicatorSource => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The source of the threat intel.


=head2 ThreatIntelIndicatorSourceUrl => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The URL for more details from the source of the threat intel.


=head2 ThreatIntelIndicatorType => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The type of a threat intel indicator.


=head2 ThreatIntelIndicatorValue => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The value of a threat intel indicator.


=head2 Title => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  A finding's title.


=head2 Type => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  A finding type in the format of 'namespace/category/classifier' that
classifies a finding.


=head2 UpdatedAt => ArrayRef[L<Paws::SecurityHub::DateFilter>]

  An ISO8601-formatted timestamp that indicates when the finding record
was last updated by the security findings provider.


=head2 UserDefinedFields => ArrayRef[L<Paws::SecurityHub::MapFilter>]

  A list of name/value string pairs associated with the finding. These
are custom, user-defined fields added to a finding.


=head2 VerificationState => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  Indicates the veracity of a finding.


=head2 WorkflowState => ArrayRef[L<Paws::SecurityHub::StringFilter>]

  The workflow state of a finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

