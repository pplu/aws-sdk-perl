
package Paws::AuditManager::BatchImportEvidenceToAssessmentControl;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has ControlId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'controlId', required => 1);
  has ControlSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'controlSetId', required => 1);
  has ManualEvidence => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::ManualEvidence]', traits => ['NameInRequest'], request_name => 'manualEvidence', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchImportEvidenceToAssessmentControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}/evidence');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::BatchImportEvidenceToAssessmentControlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::BatchImportEvidenceToAssessmentControl - Arguments for method BatchImportEvidenceToAssessmentControl on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchImportEvidenceToAssessmentControl on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method BatchImportEvidenceToAssessmentControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchImportEvidenceToAssessmentControl.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $BatchImportEvidenceToAssessmentControlResponse =
      $auditmanager->BatchImportEvidenceToAssessmentControl(
      AssessmentId   => 'MyUUID',
      ControlId      => 'MyUUID',
      ControlSetId   => 'MyControlSetId',
      ManualEvidence => [
        {
          S3ResourcePath => 'MyS3Url',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $Errors = $BatchImportEvidenceToAssessmentControlResponse->Errors;

# Returns a L<Paws::AuditManager::BatchImportEvidenceToAssessmentControlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/BatchImportEvidenceToAssessmentControl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.



=head2 B<REQUIRED> ControlId => Str

The identifier for the specified control.



=head2 B<REQUIRED> ControlSetId => Str

The identifier for the specified control set.



=head2 B<REQUIRED> ManualEvidence => ArrayRef[L<Paws::AuditManager::ManualEvidence>]

The list of manual evidence objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchImportEvidenceToAssessmentControl in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

