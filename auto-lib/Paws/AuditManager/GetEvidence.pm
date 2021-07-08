
package Paws::AuditManager::GetEvidence;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has ControlSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'controlSetId', required => 1);
  has EvidenceFolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'evidenceFolderId', required => 1);
  has EvidenceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'evidenceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEvidence');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence/{evidenceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::GetEvidenceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetEvidence - Arguments for method GetEvidence on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEvidence on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method GetEvidence.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEvidence.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $GetEvidenceResponse = $auditmanager->GetEvidence(
      AssessmentId     => 'MyUUID',
      ControlSetId     => 'MyControlSetId',
      EvidenceFolderId => 'MyUUID',
      EvidenceId       => 'MyUUID',

    );

    # Results:
    my $Evidence = $GetEvidenceResponse->Evidence;

    # Returns a L<Paws::AuditManager::GetEvidenceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/GetEvidence>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.



=head2 B<REQUIRED> ControlSetId => Str

The identifier for the specified control set.



=head2 B<REQUIRED> EvidenceFolderId => Str

The identifier for the folder in which the evidence is stored.



=head2 B<REQUIRED> EvidenceId => Str

The identifier for the evidence.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEvidence in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

