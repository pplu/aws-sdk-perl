package Paws::KinesisAnalytics;
  use Moose;
  sub service { 'kinesisanalytics' }
  sub signing_name { 'kinesisanalytics' }
  sub version { '2015-08-14' }
  sub target_prefix { 'KinesisAnalytics_20150814' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddApplicationCloudWatchLoggingOption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::AddApplicationCloudWatchLoggingOption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddApplicationInput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::AddApplicationInput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddApplicationInputProcessingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::AddApplicationInputProcessingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddApplicationOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::AddApplicationOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddApplicationReferenceDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::AddApplicationReferenceDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationCloudWatchLoggingOption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::DeleteApplicationCloudWatchLoggingOption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationInputProcessingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::DeleteApplicationInputProcessingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::DeleteApplicationOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationReferenceDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::DeleteApplicationReferenceDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::DescribeApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DiscoverInputSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::DiscoverInputSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::StartApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::StopApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalytics::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AddApplicationCloudWatchLoggingOption AddApplicationInput AddApplicationInputProcessingConfiguration AddApplicationOutput AddApplicationReferenceDataSource CreateApplication DeleteApplication DeleteApplicationCloudWatchLoggingOption DeleteApplicationInputProcessingConfiguration DeleteApplicationOutput DeleteApplicationReferenceDataSource DescribeApplication DiscoverInputSchema ListApplications StartApplication StopApplication UpdateApplication / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics - Perl Interface to AWS Amazon Kinesis Analytics

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KinesisAnalytics');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14>


=head1 METHODS

=head2 AddApplicationCloudWatchLoggingOption

=over

=item ApplicationName => Str

=item CloudWatchLoggingOption => L<Paws::KinesisAnalytics::CloudWatchLoggingOption>

=item CurrentApplicationVersionId => Int


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::AddApplicationCloudWatchLoggingOption>

Returns: a L<Paws::KinesisAnalytics::AddApplicationCloudWatchLoggingOptionResponse> instance

Adds a CloudWatch log stream to monitor application configuration
errors. For more information about using CloudWatch log streams with
Amazon Kinesis Analytics applications, see Working with Amazon
CloudWatch Logs
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).


=head2 AddApplicationInput

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item Input => L<Paws::KinesisAnalytics::Input>


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::AddApplicationInput>

Returns: a L<Paws::KinesisAnalytics::AddApplicationInputResponse> instance

Adds a streaming source to your Amazon Kinesis application. For
conceptual information, see Configuring Application Input
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).

You can add a streaming source either when you create an application or
you can use this operation to add a streaming source after you create
an application. For more information, see CreateApplication.

Any configuration update, including adding a streaming source using
this operation, results in a new version of the application. You can
use the DescribeApplication operation to find the current application
version.

This operation requires permissions to perform the
C<kinesisanalytics:AddApplicationInput> action.


=head2 AddApplicationInputProcessingConfiguration

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item InputId => Str

=item InputProcessingConfiguration => L<Paws::KinesisAnalytics::InputProcessingConfiguration>


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::AddApplicationInputProcessingConfiguration>

Returns: a L<Paws::KinesisAnalytics::AddApplicationInputProcessingConfigurationResponse> instance

Adds an InputProcessingConfiguration to an application. An input
processor preprocesses records on the input stream before the
application's SQL code executes. Currently, the only input processor
available is AWS Lambda (https://aws.amazon.com/documentation/lambda/).


=head2 AddApplicationOutput

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item Output => L<Paws::KinesisAnalytics::Output>


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::AddApplicationOutput>

Returns: a L<Paws::KinesisAnalytics::AddApplicationOutputResponse> instance

Adds an external destination to your Amazon Kinesis Analytics
application.

If you want Amazon Kinesis Analytics to deliver data from an
in-application stream within your application to an external
destination (such as an Amazon Kinesis stream, an Amazon Kinesis
Firehose delivery stream, or an AWS Lambda function), you add the
relevant configuration to your application using this operation. You
can configure one or more outputs for your application. Each output
configuration maps an in-application stream and an external
destination.

You can use one of the output configurations to deliver data from your
in-application error stream to an external destination so that you can
analyze the errors. For more information, see Understanding Application
Output (Destination)
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).

Any configuration update, including adding a streaming source using
this operation, results in a new version of the application. You can
use the DescribeApplication operation to find the current application
version.

For the limits on the number of application inputs and outputs you can
configure, see Limits
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

This operation requires permissions to perform the
C<kinesisanalytics:AddApplicationOutput> action.


=head2 AddApplicationReferenceDataSource

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item ReferenceDataSource => L<Paws::KinesisAnalytics::ReferenceDataSource>


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::AddApplicationReferenceDataSource>

Returns: a L<Paws::KinesisAnalytics::AddApplicationReferenceDataSourceResponse> instance

Adds a reference data source to an existing application.

Amazon Kinesis Analytics reads reference data (that is, an Amazon S3
object) and creates an in-application table within your application. In
the request, you provide the source (S3 bucket name and object key
name), name of the in-application table to create, and the necessary
mapping information that describes how data in Amazon S3 object maps to
columns in the resulting in-application table.

For conceptual information, see Configuring Application Input
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).
For the limits on data sources you can add to your application, see
Limits
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

This operation requires permissions to perform the
C<kinesisanalytics:AddApplicationOutput> action.


=head2 CreateApplication

=over

=item ApplicationName => Str

=item [ApplicationCode => Str]

=item [ApplicationDescription => Str]

=item [CloudWatchLoggingOptions => ArrayRef[L<Paws::KinesisAnalytics::CloudWatchLoggingOption>]]

=item [Inputs => ArrayRef[L<Paws::KinesisAnalytics::Input>]]

=item [Outputs => ArrayRef[L<Paws::KinesisAnalytics::Output>]]


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::CreateApplication>

Returns: a L<Paws::KinesisAnalytics::CreateApplicationResponse> instance

Creates an Amazon Kinesis Analytics application. You can configure each
application with one streaming source as input, application code to
process the input, and up to three destinations where you want Amazon
Kinesis Analytics to write the output data from your application. For
an overview, see How it Works
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html).

In the input configuration, you map the streaming source to an
in-application stream, which you can think of as a constantly updating
table. In the mapping, you must provide a schema for the in-application
stream and map each data column in the in-application stream to a data
element in the streaming source.

Your application code is one or more SQL statements that read input
data, transform it, and generate output. Your application code can
create one or more SQL artifacts like SQL streams or pumps.

In the output configuration, you can configure the application to write
data from in-application streams created in your applications to up to
three destinations.

To read data from your source stream or write data to destination
streams, Amazon Kinesis Analytics needs your permissions. You grant
these permissions by creating IAM roles. This operation requires
permissions to perform the C<kinesisanalytics:CreateApplication>
action.

For introductory exercises to create an Amazon Kinesis Analytics
application, see Getting Started
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html).


=head2 DeleteApplication

=over

=item ApplicationName => Str

=item CreateTimestamp => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::DeleteApplication>

Returns: a L<Paws::KinesisAnalytics::DeleteApplicationResponse> instance

Deletes the specified application. Amazon Kinesis Analytics halts
application execution and deletes the application, including any
application artifacts (such as in-application streams, reference table,
and application code).

This operation requires permissions to perform the
C<kinesisanalytics:DeleteApplication> action.


=head2 DeleteApplicationCloudWatchLoggingOption

=over

=item ApplicationName => Str

=item CloudWatchLoggingOptionId => Str

=item CurrentApplicationVersionId => Int


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::DeleteApplicationCloudWatchLoggingOption>

Returns: a L<Paws::KinesisAnalytics::DeleteApplicationCloudWatchLoggingOptionResponse> instance

Deletes a CloudWatch log stream from an application. For more
information about using CloudWatch log streams with Amazon Kinesis
Analytics applications, see Working with Amazon CloudWatch Logs
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).


=head2 DeleteApplicationInputProcessingConfiguration

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item InputId => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::DeleteApplicationInputProcessingConfiguration>

Returns: a L<Paws::KinesisAnalytics::DeleteApplicationInputProcessingConfigurationResponse> instance

Deletes an InputProcessingConfiguration from an input.


=head2 DeleteApplicationOutput

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item OutputId => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::DeleteApplicationOutput>

Returns: a L<Paws::KinesisAnalytics::DeleteApplicationOutputResponse> instance

Deletes output destination configuration from your application
configuration. Amazon Kinesis Analytics will no longer write data from
the corresponding in-application stream to the external output
destination.

This operation requires permissions to perform the
C<kinesisanalytics:DeleteApplicationOutput> action.


=head2 DeleteApplicationReferenceDataSource

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item ReferenceId => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::DeleteApplicationReferenceDataSource>

Returns: a L<Paws::KinesisAnalytics::DeleteApplicationReferenceDataSourceResponse> instance

Deletes a reference data source configuration from the specified
application configuration.

If the application is running, Amazon Kinesis Analytics immediately
removes the in-application table that you created using the
AddApplicationReferenceDataSource operation.

This operation requires permissions to perform the
C<kinesisanalytics.DeleteApplicationReferenceDataSource> action.


=head2 DescribeApplication

=over

=item ApplicationName => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::DescribeApplication>

Returns: a L<Paws::KinesisAnalytics::DescribeApplicationResponse> instance

Returns information about a specific Amazon Kinesis Analytics
application.

If you want to retrieve a list of all applications in your account, use
the ListApplications operation.

This operation requires permissions to perform the
C<kinesisanalytics:DescribeApplication> action. You can use
C<DescribeApplication> to get the current application versionId, which
you need to call other operations such as C<Update>.


=head2 DiscoverInputSchema

=over

=item [InputProcessingConfiguration => L<Paws::KinesisAnalytics::InputProcessingConfiguration>]

=item [InputStartingPositionConfiguration => L<Paws::KinesisAnalytics::InputStartingPositionConfiguration>]

=item [ResourceARN => Str]

=item [RoleARN => Str]

=item [S3Configuration => L<Paws::KinesisAnalytics::S3Configuration>]


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::DiscoverInputSchema>

Returns: a L<Paws::KinesisAnalytics::DiscoverInputSchemaResponse> instance

Infers a schema by evaluating sample records on the specified streaming
source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery
stream) or S3 object. In the response, the operation returns the
inferred schema and also the sample records that the operation used to
infer the schema.

You can use the inferred schema when configuring a streaming source for
your application. For conceptual information, see Configuring
Application Input
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).
Note that when you create an application using the Amazon Kinesis
Analytics console, the console uses this operation to infer a schema
and show it in the console user interface.

This operation requires permissions to perform the
C<kinesisanalytics:DiscoverInputSchema> action.


=head2 ListApplications

=over

=item [ExclusiveStartApplicationName => Str]

=item [Limit => Int]


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::ListApplications>

Returns: a L<Paws::KinesisAnalytics::ListApplicationsResponse> instance

Returns a list of Amazon Kinesis Analytics applications in your
account. For each application, the response includes the application
name, Amazon Resource Name (ARN), and status. If the response returns
the C<HasMoreApplications> value as true, you can send another request
by adding the C<ExclusiveStartApplicationName> in the request body, and
set the value of this to the last application name from the previous
response.

If you want detailed information about a specific application, use
DescribeApplication.

This operation requires permissions to perform the
C<kinesisanalytics:ListApplications> action.


=head2 StartApplication

=over

=item ApplicationName => Str

=item InputConfigurations => ArrayRef[L<Paws::KinesisAnalytics::InputConfiguration>]


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::StartApplication>

Returns: a L<Paws::KinesisAnalytics::StartApplicationResponse> instance

Starts the specified Amazon Kinesis Analytics application. After
creating an application, you must exclusively call this operation to
start your application.

After the application starts, it begins consuming the input data,
processes it, and writes the output to the configured destination.

The application status must be C<READY> for you to start an
application. You can get the application status in the console or using
the DescribeApplication operation.

After you start the application, you can stop the application from
processing the input by calling the StopApplication operation.

This operation requires permissions to perform the
C<kinesisanalytics:StartApplication> action.


=head2 StopApplication

=over

=item ApplicationName => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::StopApplication>

Returns: a L<Paws::KinesisAnalytics::StopApplicationResponse> instance

Stops the application from processing input data. You can stop an
application only if it is in the running state. You can use the
DescribeApplication operation to find the application state. After the
application is stopped, Amazon Kinesis Analytics stops reading data
from the input, the application stops processing data, and there is no
output written to the destination.

This operation requires permissions to perform the
C<kinesisanalytics:StopApplication> action.


=head2 UpdateApplication

=over

=item ApplicationName => Str

=item ApplicationUpdate => L<Paws::KinesisAnalytics::ApplicationUpdate>

=item CurrentApplicationVersionId => Int


=back

Each argument is described in detail in: L<Paws::KinesisAnalytics::UpdateApplication>

Returns: a L<Paws::KinesisAnalytics::UpdateApplicationResponse> instance

Updates an existing Amazon Kinesis Analytics application. Using this
API, you can update application code, input configuration, and output
configuration.

Note that Amazon Kinesis Analytics updates the
C<CurrentApplicationVersionId> each time you update your application.

This operation requires permission for the
C<kinesisanalytics:UpdateApplication> action.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

