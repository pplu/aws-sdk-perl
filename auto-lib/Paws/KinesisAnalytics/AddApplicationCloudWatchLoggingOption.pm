
package Paws::KinesisAnalytics::AddApplicationCloudWatchLoggingOption;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CloudWatchLoggingOption => (is => 'ro', isa => 'Paws::KinesisAnalytics::CloudWatchLoggingOption', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddApplicationCloudWatchLoggingOption');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::AddApplicationCloudWatchLoggingOptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::AddApplicationCloudWatchLoggingOption - Arguments for method AddApplicationCloudWatchLoggingOption on L<Paws::KinesisAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddApplicationCloudWatchLoggingOption on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalytics> service. Use the attributes of this class
as arguments to method AddApplicationCloudWatchLoggingOption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddApplicationCloudWatchLoggingOption.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalytics');
    my $AddApplicationCloudWatchLoggingOptionResponse =
      $kinesisanalytics->AddApplicationCloudWatchLoggingOption(
      ApplicationName         => 'MyApplicationName',
      CloudWatchLoggingOption => {
        LogStreamARN => 'MyLogStreamARN',    # min: 1, max: 2048
        RoleARN      => 'MyRoleARN',         # min: 1, max: 2048

      },
      CurrentApplicationVersionId => 1,

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/AddApplicationCloudWatchLoggingOption>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The Kinesis Analytics application name.



=head2 B<REQUIRED> CloudWatchLoggingOption => L<Paws::KinesisAnalytics::CloudWatchLoggingOption>

Provides the CloudWatch log stream Amazon Resource Name (ARN) and the
IAM role ARN. Note: To write application messages to CloudWatch, the
IAM role that is used must have the C<PutLogEvents> policy action
enabled.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

The version ID of the Kinesis Analytics application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddApplicationCloudWatchLoggingOption in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

