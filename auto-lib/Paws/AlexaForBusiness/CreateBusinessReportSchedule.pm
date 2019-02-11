
package Paws::AlexaForBusiness::CreateBusinessReportSchedule;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has ContentRange => (is => 'ro', isa => 'Paws::AlexaForBusiness::BusinessReportContentRange', required => 1);
  has Format => (is => 'ro', isa => 'Str', required => 1);
  has Recurrence => (is => 'ro', isa => 'Paws::AlexaForBusiness::BusinessReportRecurrence');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has ScheduleName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBusinessReportSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::CreateBusinessReportScheduleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateBusinessReportSchedule - Arguments for method CreateBusinessReportSchedule on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBusinessReportSchedule on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method CreateBusinessReportSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBusinessReportSchedule.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $CreateBusinessReportScheduleResponse =
      $a4b->CreateBusinessReportSchedule(
      ContentRange => {
        Interval => 'ONE_DAY',    # values: ONE_DAY, ONE_WEEK; OPTIONAL
      },
      Format             => 'CSV',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Recurrence         => {
        StartDate => 'MyDate',                         # OPTIONAL
      },    # OPTIONAL
      S3BucketName => 'MyCustomerS3BucketName',          # OPTIONAL
      S3KeyPrefix  => 'MyS3KeyPrefix',                   # OPTIONAL
      ScheduleName => 'MyBusinessReportScheduleName',    # OPTIONAL
      );

    # Results:
    my $ScheduleArn = $CreateBusinessReportScheduleResponse->ScheduleArn;

# Returns a L<Paws::AlexaForBusiness::CreateBusinessReportScheduleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/CreateBusinessReportSchedule>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The client request token.



=head2 B<REQUIRED> ContentRange => L<Paws::AlexaForBusiness::BusinessReportContentRange>

The content range of the reports.



=head2 B<REQUIRED> Format => Str

The format of the generated report (individual CSV files or zipped
files of individual files).

Valid values are: C<"CSV">, C<"CSV_ZIP">

=head2 Recurrence => L<Paws::AlexaForBusiness::BusinessReportRecurrence>

The recurrence of the reports.



=head2 S3BucketName => Str

The S3 bucket name of the output reports.



=head2 S3KeyPrefix => Str

The S3 key where the report is delivered.



=head2 ScheduleName => Str

The name identifier of the schedule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBusinessReportSchedule in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

