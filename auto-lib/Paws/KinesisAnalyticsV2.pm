package Paws::KinesisAnalyticsV2;
  use Moose;
  sub service { 'kinesisanalytics' }
  sub signing_name { 'kinesisanalytics' }
  sub version { '2018-05-23' }
  sub target_prefix { 'KinesisAnalytics_20180523' }
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
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::AddApplicationCloudWatchLoggingOption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddApplicationInput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::AddApplicationInput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddApplicationInputProcessingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::AddApplicationInputProcessingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddApplicationOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::AddApplicationOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddApplicationReferenceDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::AddApplicationReferenceDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplicationSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::CreateApplicationSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationCloudWatchLoggingOption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::DeleteApplicationCloudWatchLoggingOption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationInputProcessingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::DeleteApplicationInputProcessingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::DeleteApplicationOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationReferenceDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::DeleteApplicationReferenceDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::DeleteApplicationSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::DescribeApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplicationSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::DescribeApplicationSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DiscoverInputSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::DiscoverInputSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::ListApplicationSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::StartApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::StopApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisAnalyticsV2::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplications(@_, NextToken => $next_result->NextToken);
        push @{ $result->ApplicationSummaries }, @{ $next_result->ApplicationSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ApplicationSummaries') foreach (@{ $result->ApplicationSummaries });
        $result = $self->ListApplications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ApplicationSummaries') foreach (@{ $result->ApplicationSummaries });
    }

    return undef
  }
  sub ListAllApplicationSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplicationSnapshots(@_, NextToken => $next_result->NextToken);
        push @{ $result->SnapshotSummaries }, @{ $next_result->SnapshotSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SnapshotSummaries') foreach (@{ $result->SnapshotSummaries });
        $result = $self->ListApplicationSnapshots(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SnapshotSummaries') foreach (@{ $result->SnapshotSummaries });
    }

    return undef
  }


  sub operations { qw/AddApplicationCloudWatchLoggingOption AddApplicationInput AddApplicationInputProcessingConfiguration AddApplicationOutput AddApplicationReferenceDataSource CreateApplication CreateApplicationSnapshot DeleteApplication DeleteApplicationCloudWatchLoggingOption DeleteApplicationInputProcessingConfiguration DeleteApplicationOutput DeleteApplicationReferenceDataSource DeleteApplicationSnapshot DescribeApplication DescribeApplicationSnapshot DiscoverInputSchema ListApplications ListApplicationSnapshots StartApplication StopApplication UpdateApplication / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2 - Perl Interface to AWS Amazon Kinesis Analytics

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KinesisAnalyticsV2');
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

Documentation for Kinesis Data Analytics API v2

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2018-05-23>


=head1 METHODS

=head2 AddApplicationCloudWatchLoggingOption

=over

=item ApplicationName => Str

=item CloudWatchLoggingOption => L<Paws::KinesisAnalyticsV2::CloudWatchLoggingOption>

=item CurrentApplicationVersionId => Int


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::AddApplicationCloudWatchLoggingOption>

Returns: a L<Paws::KinesisAnalyticsV2::AddApplicationCloudWatchLoggingOptionResponse> instance

Adds an Amazon CloudWatch log stream to monitor application
configuration errors.


=head2 AddApplicationInput

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item Input => L<Paws::KinesisAnalyticsV2::Input>


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::AddApplicationInput>

Returns: a L<Paws::KinesisAnalyticsV2::AddApplicationInputResponse> instance

Adds a streaming source to your SQL-based Amazon Kinesis Data Analytics
application.

You can add a streaming source when you create an application, or you
can use this operation to add a streaming source after you create an
application. For more information, see CreateApplication.

Any configuration update, including adding a streaming source using
this operation, results in a new version of the application. You can
use the DescribeApplication operation to find the current application
version.


=head2 AddApplicationInputProcessingConfiguration

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item InputId => Str

=item InputProcessingConfiguration => L<Paws::KinesisAnalyticsV2::InputProcessingConfiguration>


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::AddApplicationInputProcessingConfiguration>

Returns: a L<Paws::KinesisAnalyticsV2::AddApplicationInputProcessingConfigurationResponse> instance

Adds an InputProcessingConfiguration to an SQL-based Kinesis Data
Analytics application. An input processor pre-processes records on the
input stream before the application's SQL code executes. Currently, the
only input processor available is AWS Lambda
(https://aws.amazon.com/documentation/lambda/).


=head2 AddApplicationOutput

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item Output => L<Paws::KinesisAnalyticsV2::Output>


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::AddApplicationOutput>

Returns: a L<Paws::KinesisAnalyticsV2::AddApplicationOutputResponse> instance

Adds an external destination to your SQL-based Amazon Kinesis Data
Analytics application.

If you want Kinesis Data Analytics to deliver data from an
in-application stream within your application to an external
destination (such as an Kinesis data stream, a Kinesis Data Firehose
delivery stream, or an AWS Lambda function), you add the relevant
configuration to your application using this operation. You can
configure one or more outputs for your application. Each output
configuration maps an in-application stream and an external
destination.

You can use one of the output configurations to deliver data from your
in-application error stream to an external destination so that you can
analyze the errors.

Any configuration update, including adding a streaming source using
this operation, results in a new version of the application. You can
use the DescribeApplication operation to find the current application
version.


=head2 AddApplicationReferenceDataSource

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item ReferenceDataSource => L<Paws::KinesisAnalyticsV2::ReferenceDataSource>


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::AddApplicationReferenceDataSource>

Returns: a L<Paws::KinesisAnalyticsV2::AddApplicationReferenceDataSourceResponse> instance

Adds a reference data source to an existing SQL-based Amazon Kinesis
Data Analytics application.

Kinesis Data Analytics reads reference data (that is, an Amazon S3
object) and creates an in-application table within your application. In
the request, you provide the source (S3 bucket name and object key
name), name of the in-application table to create, and the necessary
mapping information that describes how data in an Amazon S3 object maps
to columns in the resulting in-application table.


=head2 CreateApplication

=over

=item ApplicationName => Str

=item RuntimeEnvironment => Str

=item ServiceExecutionRole => Str

=item [ApplicationConfiguration => L<Paws::KinesisAnalyticsV2::ApplicationConfiguration>]

=item [ApplicationDescription => Str]

=item [CloudWatchLoggingOptions => ArrayRef[L<Paws::KinesisAnalyticsV2::CloudWatchLoggingOption>]]


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::CreateApplication>

Returns: a L<Paws::KinesisAnalyticsV2::CreateApplicationResponse> instance

Creates an Amazon Kinesis Data Analytics application. For information
about creating a Kinesis Data Analytics application, see Creating an
Application
(https://docs.aws.amazon.com/kinesisanalytics/latest/Java/creating-app.html).

SQL is not enabled for this private beta release. Using SQL parameters
(such as SqlApplicationConfiguration) will result in an error.


=head2 CreateApplicationSnapshot

=over

=item ApplicationName => Str

=item SnapshotName => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::CreateApplicationSnapshot>

Returns: a L<Paws::KinesisAnalyticsV2::CreateApplicationSnapshotResponse> instance

Creates a snapshot of the application's state data.


=head2 DeleteApplication

=over

=item ApplicationName => Str

=item CreateTimestamp => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::DeleteApplication>

Returns: a L<Paws::KinesisAnalyticsV2::DeleteApplicationResponse> instance

Deletes the specified application. Kinesis Data Analytics halts
application execution and deletes the application.


=head2 DeleteApplicationCloudWatchLoggingOption

=over

=item ApplicationName => Str

=item CloudWatchLoggingOptionId => Str

=item CurrentApplicationVersionId => Int


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::DeleteApplicationCloudWatchLoggingOption>

Returns: a L<Paws::KinesisAnalyticsV2::DeleteApplicationCloudWatchLoggingOptionResponse> instance

Deletes an Amazon CloudWatch log stream from an Amazon Kinesis Data
Analytics application.


=head2 DeleteApplicationInputProcessingConfiguration

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item InputId => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::DeleteApplicationInputProcessingConfiguration>

Returns: a L<Paws::KinesisAnalyticsV2::DeleteApplicationInputProcessingConfigurationResponse> instance

Deletes an InputProcessingConfiguration from an input.


=head2 DeleteApplicationOutput

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item OutputId => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::DeleteApplicationOutput>

Returns: a L<Paws::KinesisAnalyticsV2::DeleteApplicationOutputResponse> instance

Deletes the output destination configuration from your SQL-based Amazon
Kinesis Data Analytics application's configuration. Kinesis Data
Analytics will no longer write data from the corresponding
in-application stream to the external output destination.


=head2 DeleteApplicationReferenceDataSource

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item ReferenceId => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::DeleteApplicationReferenceDataSource>

Returns: a L<Paws::KinesisAnalyticsV2::DeleteApplicationReferenceDataSourceResponse> instance

Deletes a reference data source configuration from the specified
SQL-based Amazon Kinesis Data Analytics application's configuration.

If the application is running, Kinesis Data Analytics immediately
removes the in-application table that you created using the
AddApplicationReferenceDataSource operation.


=head2 DeleteApplicationSnapshot

=over

=item ApplicationName => Str

=item SnapshotCreationTimestamp => Str

=item SnapshotName => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::DeleteApplicationSnapshot>

Returns: a L<Paws::KinesisAnalyticsV2::DeleteApplicationSnapshotResponse> instance

Deletes a snapshot of application state.


=head2 DescribeApplication

=over

=item ApplicationName => Str

=item [IncludeAdditionalDetails => Bool]


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::DescribeApplication>

Returns: a L<Paws::KinesisAnalyticsV2::DescribeApplicationResponse> instance

Returns information about a specific Amazon Kinesis Data Analytics
application.

If you want to retrieve a list of all applications in your account, use
the ListApplications operation.


=head2 DescribeApplicationSnapshot

=over

=item ApplicationName => Str

=item SnapshotName => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::DescribeApplicationSnapshot>

Returns: a L<Paws::KinesisAnalyticsV2::DescribeApplicationSnapshotResponse> instance

Returns information about a snapshot of application state data.


=head2 DiscoverInputSchema

=over

=item ServiceExecutionRole => Str

=item [InputProcessingConfiguration => L<Paws::KinesisAnalyticsV2::InputProcessingConfiguration>]

=item [InputStartingPositionConfiguration => L<Paws::KinesisAnalyticsV2::InputStartingPositionConfiguration>]

=item [ResourceARN => Str]

=item [S3Configuration => L<Paws::KinesisAnalyticsV2::S3Configuration>]


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::DiscoverInputSchema>

Returns: a L<Paws::KinesisAnalyticsV2::DiscoverInputSchemaResponse> instance

Infers a schema for an SQL-based Amazon Kinesis Data Analytics
application by evaluating sample records on the specified streaming
source (Kinesis data stream or Kinesis Data Firehose delivery stream)
or Amazon S3 object. In the response, the operation returns the
inferred schema and also the sample records that the operation used to
infer the schema.

You can use the inferred schema when configuring a streaming source for
your application. When you create an application using the Kinesis Data
Analytics console, the console uses this operation to infer a schema
and show it in the console user interface.


=head2 ListApplications

=over

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::ListApplications>

Returns: a L<Paws::KinesisAnalyticsV2::ListApplicationsResponse> instance

Returns a list of Amazon Kinesis Data Analytics applications in your
account. For each application, the response includes the application
name, Amazon Resource Name (ARN), and status.

If you want detailed information about a specific application, use
DescribeApplication.


=head2 ListApplicationSnapshots

=over

=item ApplicationName => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::ListApplicationSnapshots>

Returns: a L<Paws::KinesisAnalyticsV2::ListApplicationSnapshotsResponse> instance

Lists information about the current application snapshots.


=head2 StartApplication

=over

=item ApplicationName => Str

=item RunConfiguration => L<Paws::KinesisAnalyticsV2::RunConfiguration>


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::StartApplication>

Returns: a L<Paws::KinesisAnalyticsV2::StartApplicationResponse> instance

Starts the specified Amazon Kinesis Data Analytics application. After
creating an application, you must exclusively call this operation to
start your application.

SQL is not enabled for this private beta. Using SQL parameters (such as
RunConfiguration$SqlRunConfigurations) will result in an error.


=head2 StopApplication

=over

=item ApplicationName => Str


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::StopApplication>

Returns: a L<Paws::KinesisAnalyticsV2::StopApplicationResponse> instance

Stops the application from processing data. You can stop an application
only if it is in the running state. You can use the DescribeApplication
operation to find the application state.


=head2 UpdateApplication

=over

=item ApplicationName => Str

=item CurrentApplicationVersionId => Int

=item [ApplicationConfigurationUpdate => L<Paws::KinesisAnalyticsV2::ApplicationConfigurationUpdate>]

=item [CloudWatchLoggingOptionUpdates => ArrayRef[L<Paws::KinesisAnalyticsV2::CloudWatchLoggingOptionUpdate>]]

=item [RunConfigurationUpdate => L<Paws::KinesisAnalyticsV2::RunConfigurationUpdate>]

=item [ServiceExecutionRoleUpdate => Str]


=back

Each argument is described in detail in: L<Paws::KinesisAnalyticsV2::UpdateApplication>

Returns: a L<Paws::KinesisAnalyticsV2::UpdateApplicationResponse> instance

Updates an existing Amazon Kinesis Data Analytics application. Using
this operation, you can update application code, input configuration,
and output configuration.

Kinesis Data Analytics updates the C<ApplicationVersionId> each time
you update your application.

SQL is not enabled for this private beta. Using SQL parameters (such as
SqlApplicationConfigurationUpdate) will result in an error.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplications(sub { },[Limit => Int, NextToken => Str])

=head2 ListAllApplications([Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ApplicationSummaries, passing the object as the first parameter, and the string 'ApplicationSummaries' as the second parameter 

If not, it will return a a L<Paws::KinesisAnalyticsV2::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplicationSnapshots(sub { },ApplicationName => Str, [Limit => Int, NextToken => Str])

=head2 ListAllApplicationSnapshots(ApplicationName => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SnapshotSummaries, passing the object as the first parameter, and the string 'SnapshotSummaries' as the second parameter 

If not, it will return a a L<Paws::KinesisAnalyticsV2::ListApplicationSnapshotsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

