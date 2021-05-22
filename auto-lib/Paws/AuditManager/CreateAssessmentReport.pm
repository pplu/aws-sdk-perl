
package Paws::AuditManager::CreateAssessmentReport;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssessmentReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}/reports');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::CreateAssessmentReportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::CreateAssessmentReport - Arguments for method CreateAssessmentReport on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssessmentReport on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method CreateAssessmentReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssessmentReport.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $CreateAssessmentReportResponse = $auditmanager->CreateAssessmentReport(
      AssessmentId => 'MyUUID',
      Name         => 'MyAssessmentReportName',
      Description  => 'MyAssessmentReportDescription',    # OPTIONAL
    );

    # Results:
    my $AssessmentReport = $CreateAssessmentReportResponse->AssessmentReport;

    # Returns a L<Paws::AuditManager::CreateAssessmentReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/CreateAssessmentReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.



=head2 Description => Str

The description of the assessment report.



=head2 B<REQUIRED> Name => Str

The name of the new assessment report.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssessmentReport in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

