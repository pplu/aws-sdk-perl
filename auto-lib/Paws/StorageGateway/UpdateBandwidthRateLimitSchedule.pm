
package Paws::StorageGateway::UpdateBandwidthRateLimitSchedule;
  use Moose;
  has BandwidthRateLimitIntervals => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::BandwidthRateLimitInterval]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBandwidthRateLimitSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateBandwidthRateLimitScheduleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateBandwidthRateLimitSchedule - Arguments for method UpdateBandwidthRateLimitSchedule on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBandwidthRateLimitSchedule on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateBandwidthRateLimitSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBandwidthRateLimitSchedule.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $UpdateBandwidthRateLimitScheduleOutput =
      $storagegateway->UpdateBandwidthRateLimitSchedule(
      BandwidthRateLimitIntervals => [
        {
          DaysOfWeek => [
            1, ...    # max: 6
          ],          # min: 1, max: 7
          EndHourOfDay                         => 1,    # max: 23
          EndMinuteOfHour                      => 1,    # max: 59
          StartHourOfDay                       => 1,    # max: 23
          StartMinuteOfHour                    => 1,    # max: 59
          AverageDownloadRateLimitInBitsPerSec => 1,    # min: 102400; OPTIONAL
          AverageUploadRateLimitInBitsPerSec   => 1,    # min: 51200; OPTIONAL
        },
        ...
      ],
      GatewayARN => 'MyGatewayARN',

      );

    # Results:
    my $GatewayARN = $UpdateBandwidthRateLimitScheduleOutput->GatewayARN;

# Returns a L<Paws::StorageGateway::UpdateBandwidthRateLimitScheduleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateBandwidthRateLimitSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BandwidthRateLimitIntervals => ArrayRef[L<Paws::StorageGateway::BandwidthRateLimitInterval>]

An array containing bandwidth rate limit schedule intervals for a
gateway. When no bandwidth rate limit intervals have been scheduled,
the array is empty.



=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBandwidthRateLimitSchedule in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

