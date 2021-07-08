
package Paws::AuditManager::DeleteAssessmentReport;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has AssessmentReportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentReportId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAssessmentReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}/reports/{assessmentReportId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::DeleteAssessmentReportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::DeleteAssessmentReport - Arguments for method DeleteAssessmentReport on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAssessmentReport on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method DeleteAssessmentReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAssessmentReport.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $DeleteAssessmentReportResponse = $auditmanager->DeleteAssessmentReport(
      AssessmentId       => 'MyUUID',
      AssessmentReportId => 'MyUUID',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/DeleteAssessmentReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.



=head2 B<REQUIRED> AssessmentReportId => Str

The unique identifier for the assessment report.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAssessmentReport in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

