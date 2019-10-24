# Generated from default/object.tt
package Paws::AlexaForBusiness::BusinessReportSchedule;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_BusinessReportContentRange AlexaForBusiness_BusinessReport AlexaForBusiness_BusinessReportRecurrence/;
  has ContentRange => (is => 'ro', isa => AlexaForBusiness_BusinessReportContentRange);
  has Format => (is => 'ro', isa => Str);
  has LastBusinessReport => (is => 'ro', isa => AlexaForBusiness_BusinessReport);
  has Recurrence => (is => 'ro', isa => AlexaForBusiness_BusinessReportRecurrence);
  has S3BucketName => (is => 'ro', isa => Str);
  has S3KeyPrefix => (is => 'ro', isa => Str);
  has ScheduleArn => (is => 'ro', isa => Str);
  has ScheduleName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastBusinessReport' => {
                                         'class' => 'Paws::AlexaForBusiness::BusinessReport',
                                         'type' => 'AlexaForBusiness_BusinessReport'
                                       },
               'ContentRange' => {
                                   'class' => 'Paws::AlexaForBusiness::BusinessReportContentRange',
                                   'type' => 'AlexaForBusiness_BusinessReportContentRange'
                                 },
               'ScheduleName' => {
                                   'type' => 'Str'
                                 },
               'ScheduleArn' => {
                                  'type' => 'Str'
                                },
               'Format' => {
                             'type' => 'Str'
                           },
               'S3KeyPrefix' => {
                                  'type' => 'Str'
                                },
               'S3BucketName' => {
                                   'type' => 'Str'
                                 },
               'Recurrence' => {
                                 'class' => 'Paws::AlexaForBusiness::BusinessReportRecurrence',
                                 'type' => 'AlexaForBusiness_BusinessReportRecurrence'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::BusinessReportSchedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::BusinessReportSchedule object:

  $service_obj->Method(Att1 => { ContentRange => $value, ..., ScheduleName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::BusinessReportSchedule object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentRange

=head1 DESCRIPTION

The schedule of the usage report.

=head1 ATTRIBUTES


=head2 ContentRange => AlexaForBusiness_BusinessReportContentRange

  The content range of the reports.


=head2 Format => Str

  The format of the generated report (individual CSV files or zipped
files of individual files).


=head2 LastBusinessReport => AlexaForBusiness_BusinessReport

  The details of the last business report delivery for a specified time
interval.


=head2 Recurrence => AlexaForBusiness_BusinessReportRecurrence

  The recurrence of the reports.


=head2 S3BucketName => Str

  The S3 bucket name of the output reports.


=head2 S3KeyPrefix => Str

  The S3 key where the report is delivered.


=head2 ScheduleArn => Str

  The ARN of the business report schedule.


=head2 ScheduleName => Str

  The name identifier of the schedule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

