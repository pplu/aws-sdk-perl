package Paws::KinesisAnalytics::ApplicationDetail;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationCode => (is => 'ro', isa => 'Str');
  has ApplicationDescription => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationStatus => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has CloudWatchLoggingOptionDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::CloudWatchLoggingOptionDescription]');
  has CreateTimestamp => (is => 'ro', isa => 'Str');
  has InputDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::InputDescription]');
  has LastUpdateTimestamp => (is => 'ro', isa => 'Str');
  has OutputDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::OutputDescription]');
  has ReferenceDataSourceDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::ReferenceDataSourceDescription]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::ApplicationDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::ApplicationDetail object:

  $service_obj->Method(Att1 => { ApplicationARN => $value, ..., ReferenceDataSourceDescriptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::ApplicationDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationARN

=head1 DESCRIPTION

Provides a description of the application, including the application
Amazon Resource Name (ARN), status, latest version, and input and
output configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationARN => Str

  ARN of the application.


=head2 ApplicationCode => Str

  Returns the application code that you provided to perform data analysis
on any of the in-application streams in your application.


=head2 ApplicationDescription => Str

  Description of the application.


=head2 B<REQUIRED> ApplicationName => Str

  Name of the application.


=head2 B<REQUIRED> ApplicationStatus => Str

  Status of the application.


=head2 B<REQUIRED> ApplicationVersionId => Int

  Provides the current application version.


=head2 CloudWatchLoggingOptionDescriptions => ArrayRef[L<Paws::KinesisAnalytics::CloudWatchLoggingOptionDescription>]

  Describes the CloudWatch log streams that are configured to receive
application messages. For more information about using CloudWatch log
streams with Amazon Kinesis Analytics applications, see Working with
Amazon CloudWatch Logs
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).


=head2 CreateTimestamp => Str

  Time stamp when the application version was created.


=head2 InputDescriptions => ArrayRef[L<Paws::KinesisAnalytics::InputDescription>]

  Describes the application input configuration. For more information,
see Configuring Application Input
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).


=head2 LastUpdateTimestamp => Str

  Time stamp when the application was last updated.


=head2 OutputDescriptions => ArrayRef[L<Paws::KinesisAnalytics::OutputDescription>]

  Describes the application output configuration. For more information,
see Configuring Application Output
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).


=head2 ReferenceDataSourceDescriptions => ArrayRef[L<Paws::KinesisAnalytics::ReferenceDataSourceDescription>]

  Describes reference data sources configured for the application. For
more information, see Configuring Application Input
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

