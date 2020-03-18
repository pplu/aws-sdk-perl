
package Paws::CloudTrail::GetTrailStatus;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrailStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::GetTrailStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GetTrailStatus - Arguments for method GetTrailStatus on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTrailStatus on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method GetTrailStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTrailStatus.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $GetTrailStatusResponse = $cloudtrail->GetTrailStatus(
      Name => 'MyString',

    );

    # Results:
    my $IsLogging = $GetTrailStatusResponse->IsLogging;
    my $LatestCloudWatchLogsDeliveryError =
      $GetTrailStatusResponse->LatestCloudWatchLogsDeliveryError;
    my $LatestCloudWatchLogsDeliveryTime =
      $GetTrailStatusResponse->LatestCloudWatchLogsDeliveryTime;
    my $LatestDeliveryAttemptSucceeded =
      $GetTrailStatusResponse->LatestDeliveryAttemptSucceeded;
    my $LatestDeliveryAttemptTime =
      $GetTrailStatusResponse->LatestDeliveryAttemptTime;
    my $LatestDeliveryError = $GetTrailStatusResponse->LatestDeliveryError;
    my $LatestDeliveryTime  = $GetTrailStatusResponse->LatestDeliveryTime;
    my $LatestDigestDeliveryError =
      $GetTrailStatusResponse->LatestDigestDeliveryError;
    my $LatestDigestDeliveryTime =
      $GetTrailStatusResponse->LatestDigestDeliveryTime;
    my $LatestNotificationAttemptSucceeded =
      $GetTrailStatusResponse->LatestNotificationAttemptSucceeded;
    my $LatestNotificationAttemptTime =
      $GetTrailStatusResponse->LatestNotificationAttemptTime;
    my $LatestNotificationError =
      $GetTrailStatusResponse->LatestNotificationError;
    my $LatestNotificationTime =
      $GetTrailStatusResponse->LatestNotificationTime;
    my $StartLoggingTime   = $GetTrailStatusResponse->StartLoggingTime;
    my $StopLoggingTime    = $GetTrailStatusResponse->StopLoggingTime;
    my $TimeLoggingStarted = $GetTrailStatusResponse->TimeLoggingStarted;
    my $TimeLoggingStopped = $GetTrailStatusResponse->TimeLoggingStopped;

    # Returns a L<Paws::CloudTrail::GetTrailStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/GetTrailStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Specifies the name or the CloudTrail ARN of the trail for which you are
requesting status. To get the status of a shadow trail (a replication
of the trail in another region), you must specify its ARN. The format
of a trail ARN is:

C<arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTrailStatus in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

