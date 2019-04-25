
package Paws::AlexaForBusiness::UpdateBusinessReportSchedule;
  use Moose;
  has Format => (is => 'ro', isa => 'Str');
  has Recurrence => (is => 'ro', isa => 'Paws::AlexaForBusiness::BusinessReportRecurrence');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has ScheduleArn => (is => 'ro', isa => 'Str', required => 1);
  has ScheduleName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBusinessReportSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::UpdateBusinessReportScheduleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateBusinessReportSchedule - Arguments for method UpdateBusinessReportSchedule on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBusinessReportSchedule on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method UpdateBusinessReportSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBusinessReportSchedule.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $UpdateBusinessReportScheduleResponse =
      $a4b->UpdateBusinessReportSchedule(
      ScheduleArn => 'MyArn',
      Format      => 'CSV',     # OPTIONAL
      Recurrence  => {
        StartDate => 'MyDate',    # OPTIONAL
      },    # OPTIONAL
      S3BucketName => 'MyCustomerS3BucketName',          # OPTIONAL
      S3KeyPrefix  => 'MyS3KeyPrefix',                   # OPTIONAL
      ScheduleName => 'MyBusinessReportScheduleName',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/UpdateBusinessReportSchedule>

=head1 ATTRIBUTES


=head2 Format => Str

The format of the generated report (individual CSV files or zipped
files of individual files).

Valid values are: C<"CSV">, C<"CSV_ZIP">

=head2 Recurrence => L<Paws::AlexaForBusiness::BusinessReportRecurrence>

The recurrence of the reports.



=head2 S3BucketName => Str

The S3 location of the output reports.



=head2 S3KeyPrefix => Str

The S3 key where the report is delivered.



=head2 B<REQUIRED> ScheduleArn => Str

The ARN of the business report schedule.



=head2 ScheduleName => Str

The name identifier of the schedule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBusinessReportSchedule in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

