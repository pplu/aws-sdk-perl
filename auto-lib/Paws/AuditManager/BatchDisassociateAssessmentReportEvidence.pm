
package Paws::AuditManager::BatchDisassociateAssessmentReportEvidence;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has EvidenceFolderId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'evidenceFolderId', required => 1);
  has EvidenceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'evidenceIds', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDisassociateAssessmentReportEvidence');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}/batchDisassociateFromAssessmentReport');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::BatchDisassociateAssessmentReportEvidenceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::BatchDisassociateAssessmentReportEvidence - Arguments for method BatchDisassociateAssessmentReportEvidence on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDisassociateAssessmentReportEvidence on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method BatchDisassociateAssessmentReportEvidence.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDisassociateAssessmentReportEvidence.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $BatchDisassociateAssessmentReportEvidenceResponse =
      $auditmanager->BatchDisassociateAssessmentReportEvidence(
      AssessmentId     => 'MyUUID',
      EvidenceFolderId => 'MyUUID',
      EvidenceIds      => [
        'MyUUID', ...    # min: 36, max: 36
      ],

      );

    # Results:
    my $Errors = $BatchDisassociateAssessmentReportEvidenceResponse->Errors;
    my $EvidenceIds =
      $BatchDisassociateAssessmentReportEvidenceResponse->EvidenceIds;

# Returns a L<Paws::AuditManager::BatchDisassociateAssessmentReportEvidenceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/BatchDisassociateAssessmentReportEvidence>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.



=head2 B<REQUIRED> EvidenceFolderId => Str

The identifier for the folder in which evidence is stored.



=head2 B<REQUIRED> EvidenceIds => ArrayRef[Str|Undef]

The list of evidence identifiers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDisassociateAssessmentReportEvidence in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

