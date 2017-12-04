package Paws::Snowball::JobLogs;
  use Moose;
  has JobCompletionReportURI => (is => 'ro', isa => 'Str');
  has JobFailureLogURI => (is => 'ro', isa => 'Str');
  has JobSuccessLogURI => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::JobLogs

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::JobLogs object:

  $service_obj->Method(Att1 => { JobCompletionReportURI => $value, ..., JobSuccessLogURI => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::JobLogs object:

  $result = $service_obj->Method(...);
  $result->Att1->JobCompletionReportURI

=head1 DESCRIPTION

Contains job logs. Whenever Snowball is used to import data into or
export data out of Amazon S3, you'll have the option of downloading a
PDF job report. Job logs are returned as a part of the response syntax
of the C<DescribeJob> action in the C<JobMetadata> data type. The job
logs can be accessed for up to 60 minutes after this request has been
made. To access any of the job logs after 60 minutes have passed,
you'll have to make another call to the C<DescribeJob> action.

For import jobs, the PDF job report becomes available at the end of the
import process. For export jobs, your job report typically becomes
available while the Snowball for your job part is being delivered to
you.

The job report provides you insight into the state of your Amazon S3
data transfer. The report includes details about your job or job part
for your records.

For deeper visibility into the status of your transferred objects, you
can look at the two associated logs: a success log and a failure log.
The logs are saved in comma-separated value (CSV) format, and the name
of each log includes the ID of the job or job part that the log
describes.

=head1 ATTRIBUTES


=head2 JobCompletionReportURI => Str

  A link to an Amazon S3 presigned URL where the job completion report is
located.


=head2 JobFailureLogURI => Str

  A link to an Amazon S3 presigned URL where the job failure log is
located.


=head2 JobSuccessLogURI => Str

  A link to an Amazon S3 presigned URL where the job success log is
located.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

