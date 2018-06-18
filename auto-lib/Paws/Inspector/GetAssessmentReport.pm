
package Paws::Inspector::GetAssessmentReport;
  use Moose;
  has AssessmentRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentRunArn' , required => 1);
  has ReportFileFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportFileFormat' , required => 1);
  has ReportType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssessmentReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::GetAssessmentReportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::GetAssessmentReport - Arguments for method GetAssessmentReport on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssessmentReport on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method GetAssessmentReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssessmentReport.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    my $GetAssessmentReportResponse = $inspector->GetAssessmentReport(
      AssessmentRunArn => 'MyArn',
      ReportFileFormat => 'HTML',
      ReportType       => 'FINDING',

    );

    # Results:
    my $Status = $GetAssessmentReportResponse->Status;
    my $Url    = $GetAssessmentReportResponse->Url;

    # Returns a L<Paws::Inspector::GetAssessmentReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/GetAssessmentReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunArn => Str

The ARN that specifies the assessment run for which you want to
generate a report.



=head2 B<REQUIRED> ReportFileFormat => Str

Specifies the file format (html or pdf) of the assessment report that
you want to generate.

Valid values are: C<"HTML">, C<"PDF">

=head2 B<REQUIRED> ReportType => Str

Specifies the type of the assessment report that you want to generate.
There are two types of assessment reports: a finding report and a full
report. For more information, see Assessment Reports
(http://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html).

Valid values are: C<"FINDING">, C<"FULL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssessmentReport in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

