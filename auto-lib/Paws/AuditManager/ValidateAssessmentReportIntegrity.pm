
package Paws::AuditManager::ValidateAssessmentReportIntegrity;
  use Moose;
  has S3RelativePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3RelativePath', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateAssessmentReportIntegrity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessmentReports/integrity');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::ValidateAssessmentReportIntegrityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ValidateAssessmentReportIntegrity - Arguments for method ValidateAssessmentReportIntegrity on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidateAssessmentReportIntegrity on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method ValidateAssessmentReportIntegrity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidateAssessmentReportIntegrity.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $ValidateAssessmentReportIntegrityResponse =
      $auditmanager->ValidateAssessmentReportIntegrity(
      S3RelativePath => 'MyS3Url',

      );

    # Results:
    my $SignatureAlgorithm =
      $ValidateAssessmentReportIntegrityResponse->SignatureAlgorithm;
    my $SignatureDateTime =
      $ValidateAssessmentReportIntegrityResponse->SignatureDateTime;
    my $SignatureKeyId =
      $ValidateAssessmentReportIntegrityResponse->SignatureKeyId;
    my $SignatureValid =
      $ValidateAssessmentReportIntegrityResponse->SignatureValid;
    my $ValidationErrors =
      $ValidateAssessmentReportIntegrityResponse->ValidationErrors;

# Returns a L<Paws::AuditManager::ValidateAssessmentReportIntegrityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/ValidateAssessmentReportIntegrity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3RelativePath => Str

The relative path of the specified Amazon S3 bucket in which the
assessment report is stored.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidateAssessmentReportIntegrity in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

