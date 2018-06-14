
package Paws::StorageGateway::DescribeBandwidthRateLimit;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBandwidthRateLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeBandwidthRateLimitOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeBandwidthRateLimit - Arguments for method DescribeBandwidthRateLimit on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBandwidthRateLimit on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DescribeBandwidthRateLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBandwidthRateLimit.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To describe the bandwidth rate limits of a gateway
    # Returns a value for a bandwidth rate limit if set. If not set, then only
    # the gateway ARN is returned.
    my $DescribeBandwidthRateLimitOutput =
      $storagegateway->DescribeBandwidthRateLimit(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B'
      }
      );

    # Results:
    my $AverageDownloadRateLimitInBitsPerSec =
      $DescribeBandwidthRateLimitOutput->AverageDownloadRateLimitInBitsPerSec;
    my $AverageUploadRateLimitInBitsPerSec =
      $DescribeBandwidthRateLimitOutput->AverageUploadRateLimitInBitsPerSec;
    my $GatewayARN = $DescribeBandwidthRateLimitOutput->GatewayARN;

   # Returns a L<Paws::StorageGateway::DescribeBandwidthRateLimitOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DescribeBandwidthRateLimit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBandwidthRateLimit in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

