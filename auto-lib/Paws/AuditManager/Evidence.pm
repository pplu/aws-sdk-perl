# Generated by default/object.tt
package Paws::AuditManager::Evidence;
  use Moose;
  has AssessmentReportSelection => (is => 'ro', isa => 'Str', request_name => 'assessmentReportSelection', traits => ['NameInRequest']);
  has Attributes => (is => 'ro', isa => 'Paws::AuditManager::EvidenceAttributes', request_name => 'attributes', traits => ['NameInRequest']);
  has AwsAccountId => (is => 'ro', isa => 'Str', request_name => 'awsAccountId', traits => ['NameInRequest']);
  has AwsOrganization => (is => 'ro', isa => 'Str', request_name => 'awsOrganization', traits => ['NameInRequest']);
  has ComplianceCheck => (is => 'ro', isa => 'Str', request_name => 'complianceCheck', traits => ['NameInRequest']);
  has DataSource => (is => 'ro', isa => 'Str', request_name => 'dataSource', traits => ['NameInRequest']);
  has EventName => (is => 'ro', isa => 'Str', request_name => 'eventName', traits => ['NameInRequest']);
  has EventSource => (is => 'ro', isa => 'Str', request_name => 'eventSource', traits => ['NameInRequest']);
  has EvidenceAwsAccountId => (is => 'ro', isa => 'Str', request_name => 'evidenceAwsAccountId', traits => ['NameInRequest']);
  has EvidenceByType => (is => 'ro', isa => 'Str', request_name => 'evidenceByType', traits => ['NameInRequest']);
  has EvidenceFolderId => (is => 'ro', isa => 'Str', request_name => 'evidenceFolderId', traits => ['NameInRequest']);
  has IamId => (is => 'ro', isa => 'Str', request_name => 'iamId', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has ResourcesIncluded => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::Resource]', request_name => 'resourcesIncluded', traits => ['NameInRequest']);
  has Time => (is => 'ro', isa => 'Str', request_name => 'time', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::Evidence

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AuditManager::Evidence object:

  $service_obj->Method(Att1 => { AssessmentReportSelection => $value, ..., Time => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AuditManager::Evidence object:

  $result = $service_obj->Method(...);
  $result->Att1->AssessmentReportSelection

=head1 DESCRIPTION

A record that contains the information needed to demonstrate compliance
with the requirements specified by a control. Examples of evidence
include change activity triggered by a user, or a system configuration
snapshot.

=head1 ATTRIBUTES


=head2 AssessmentReportSelection => Str

Specifies whether the evidence is included in the assessment report.


=head2 Attributes => L<Paws::AuditManager::EvidenceAttributes>

The names and values used by the evidence event, including an attribute
name (such as C<allowUsersToChangePassword>) and value (such as C<true>
or C<false>).


=head2 AwsAccountId => Str

The identifier for the specified AWS account.


=head2 AwsOrganization => Str

The AWS account from which the evidence is collected, and its AWS
organization path.


=head2 ComplianceCheck => Str

The evaluation status for evidence that falls under the compliance
check category. For evidence collected from AWS Security Hub, a I<Pass>
or I<Fail> result is shown. For evidence collected from AWS Config, a
I<Compliant> or I<Noncompliant> result is shown.


=head2 DataSource => Str

The data source from which the specified evidence was collected.


=head2 EventName => Str

The name of the specified evidence event.


=head2 EventSource => Str

The AWS service from which the evidence is collected.


=head2 EvidenceAwsAccountId => Str

The identifier for the specified AWS account.


=head2 EvidenceByType => Str

The type of automated evidence.


=head2 EvidenceFolderId => Str

The identifier for the folder in which the evidence is stored.


=head2 IamId => Str

The unique identifier for the IAM user or role associated with the
evidence.


=head2 Id => Str

The identifier for the evidence.


=head2 ResourcesIncluded => ArrayRef[L<Paws::AuditManager::Resource>]

The list of resources assessed to generate the evidence.


=head2 Time => Str

The timestamp that represents when the evidence was collected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

