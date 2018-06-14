
package Paws::StorageGateway::UpdateBandwidthRateLimit;
  use Moose;
  has AverageDownloadRateLimitInBitsPerSec => (is => 'ro', isa => 'Int');
  has AverageUploadRateLimitInBitsPerSec => (is => 'ro', isa => 'Int');
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBandwidthRateLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateBandwidthRateLimitOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateBandwidthRateLimit - Arguments for method UpdateBandwidthRateLimit on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBandwidthRateLimit on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateBandwidthRateLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBandwidthRateLimit.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To update the bandwidth rate limits of a gateway
    # Updates the bandwidth rate limits of a gateway. Both the upload and
    # download bandwidth rate limit can be set, or either one of the two. If a
    # new limit is not set, the existing rate limit remains.
    my $UpdateBandwidthRateLimitOutput =
      $storagegateway->UpdateBandwidthRateLimit(
      {
        'AverageDownloadRateLimitInBitsPerSec' => 102400,
        'AverageUploadRateLimitInBitsPerSec'   => 51200,
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B'
      }
      );

    # Results:
    my $GatewayARN = $UpdateBandwidthRateLimitOutput->GatewayARN;

    # Returns a L<Paws::StorageGateway::UpdateBandwidthRateLimitOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateBandwidthRateLimit>

=head1 ATTRIBUTES


=head2 AverageDownloadRateLimitInBitsPerSec => Int

The average download bandwidth rate limit in bits per second.



=head2 AverageUploadRateLimitInBitsPerSec => Int

The average upload bandwidth rate limit in bits per second.



=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBandwidthRateLimit in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

