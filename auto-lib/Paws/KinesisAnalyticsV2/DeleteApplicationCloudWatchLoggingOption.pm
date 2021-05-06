
package Paws::KinesisAnalyticsV2::DeleteApplicationCloudWatchLoggingOption;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CloudWatchLoggingOptionId => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationCloudWatchLoggingOption');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::DeleteApplicationCloudWatchLoggingOptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DeleteApplicationCloudWatchLoggingOption - Arguments for method DeleteApplicationCloudWatchLoggingOption on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplicationCloudWatchLoggingOption on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method DeleteApplicationCloudWatchLoggingOption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplicationCloudWatchLoggingOption.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $DeleteApplicationCloudWatchLoggingOptionResponse =
      $kinesisanalytics->DeleteApplicationCloudWatchLoggingOption(
      ApplicationName             => 'MyApplicationName',
      CloudWatchLoggingOptionId   => 'MyId',
      CurrentApplicationVersionId => 1,

      );

    # Results:
    my $ApplicationARN =
      $DeleteApplicationCloudWatchLoggingOptionResponse->ApplicationARN;
    my $ApplicationVersionId =
      $DeleteApplicationCloudWatchLoggingOptionResponse->ApplicationVersionId;
    my $CloudWatchLoggingOptionDescriptions =
      $DeleteApplicationCloudWatchLoggingOptionResponse
      ->CloudWatchLoggingOptionDescriptions;

# Returns a L<Paws::KinesisAnalyticsV2::DeleteApplicationCloudWatchLoggingOptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/DeleteApplicationCloudWatchLoggingOption>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The application name.



=head2 B<REQUIRED> CloudWatchLoggingOptionId => Str

The C<CloudWatchLoggingOptionId> of the Amazon CloudWatch logging
option to delete. You can get the C<CloudWatchLoggingOptionId> by using
the DescribeApplication operation.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

The version ID of the application. You can retrieve the application
version ID using DescribeApplication.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplicationCloudWatchLoggingOption in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

