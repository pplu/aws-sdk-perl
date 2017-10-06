
package Paws::KinesisAnalytics::CreateApplication;
  use Moose;
  has ApplicationCode => (is => 'ro', isa => 'Str');
  has ApplicationDescription => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CloudWatchLoggingOptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::CloudWatchLoggingOption]');
  has Inputs => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::Input]');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::Output]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::CreateApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::CreateApplication - Arguments for method CreateApplication on Paws::KinesisAnalytics

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the 
Amazon Kinesis Analytics service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

As an example:

  $service_obj->CreateApplication(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ApplicationCode => Str

One or more SQL statements that read input data, transform it, and
generate output. For example, you can write a SQL statement that reads
data from one in-application stream, generates a running average of the
number of advertisement clicks by vendor, and insert resulting rows in
another in-application stream using pumps. For more inforamtion about
the typical pattern, see Application Code
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html).

You can provide such series of SQL statements, where output of one
statement can be used as the input for the next statement. You store
intermediate results by creating in-application streams and pumps.

Note that the application code must create the streams with names
specified in the C<Outputs>. For example, if your C<Outputs> defines
output streams named C<ExampleOutputStream1> and
C<ExampleOutputStream2>, then your application code must create these
streams.



=head2 ApplicationDescription => Str

Summary description of the application.



=head2 B<REQUIRED> ApplicationName => Str

Name of your Amazon Kinesis Analytics application (for example,
C<sample-app>).



=head2 CloudWatchLoggingOptions => ArrayRef[L<Paws::KinesisAnalytics::CloudWatchLoggingOption>]

Use this parameter to configure a CloudWatch log stream to monitor
application configuration errors. For more information, see Working
with Amazon CloudWatch Logs
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).



=head2 Inputs => ArrayRef[L<Paws::KinesisAnalytics::Input>]

Use this parameter to configure the application input.

You can configure your application to receive input from a single
streaming source. In this configuration, you map this streaming source
to an in-application stream that is created. Your application code can
then query the in-application stream like a table (you can think of it
as a constantly updating table).

For the streaming source, you provide its Amazon Resource Name (ARN)
and format of data on the stream (for example, JSON, CSV, etc). You
also must provide an IAM role that Amazon Kinesis Analytics can assume
to read this stream on your behalf.

To create the in-application stream, you need to specify a schema to
transform your data into a schematized version used in SQL. In the
schema, you provide the necessary mapping of the data elements in the
streaming source to record columns in the in-app stream.



=head2 Outputs => ArrayRef[L<Paws::KinesisAnalytics::Output>]

You can configure application output to write data from any of the
in-application streams to up to five destinations.

These destinations can be Amazon Kinesis streams, Amazon Kinesis
Firehose delivery streams, or both.

In the configuration, you specify the in-application stream name, the
destination stream Amazon Resource Name (ARN), and the format to use
when writing data. You must also provide an IAM role that Amazon
Kinesis Analytics can assume to write to the destination stream on your
behalf.

In the output configuration, you also provide the output stream Amazon
Resource Name (ARN) and the format of data in the stream (for example,
JSON, CSV). You also must provide an IAM role that Amazon Kinesis
Analytics can assume to write to this stream on your behalf.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

