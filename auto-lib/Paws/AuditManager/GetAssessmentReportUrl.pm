
package Paws::AuditManager::GetAssessmentReportUrl;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has AssessmentReportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentReportId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssessmentReportUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}/reports/{assessmentReportId}/url');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::GetAssessmentReportUrlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetAssessmentReportUrl - Arguments for method GetAssessmentReportUrl on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssessmentReportUrl on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method GetAssessmentReportUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssessmentReportUrl.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $GetAssessmentReportUrlResponse = $auditmanager->GetAssessmentReportUrl(
      AssessmentId       => 'MyUUID',
      AssessmentReportId => 'MyUUID',

    );

    # Results:
    my $PreSignedUrl = $GetAssessmentReportUrlResponse->PreSignedUrl;

    # Returns a L<Paws::AuditManager::GetAssessmentReportUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/GetAssessmentReportUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.



=head2 B<REQUIRED> AssessmentReportId => Str

The identifier for the assessment report.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssessmentReportUrl in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

