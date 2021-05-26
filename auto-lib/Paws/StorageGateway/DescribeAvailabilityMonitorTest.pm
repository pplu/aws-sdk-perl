
package Paws::StorageGateway::DescribeAvailabilityMonitorTest;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityMonitorTest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeAvailabilityMonitorTestOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeAvailabilityMonitorTest - Arguments for method DescribeAvailabilityMonitorTest on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAvailabilityMonitorTest on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DescribeAvailabilityMonitorTest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAvailabilityMonitorTest.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $DescribeAvailabilityMonitorTestOutput =
      $storagegateway->DescribeAvailabilityMonitorTest(
      GatewayARN => 'MyGatewayARN',

      );

    # Results:
    my $GatewayARN = $DescribeAvailabilityMonitorTestOutput->GatewayARN;
    my $StartTime  = $DescribeAvailabilityMonitorTestOutput->StartTime;
    my $Status     = $DescribeAvailabilityMonitorTestOutput->Status;

# Returns a L<Paws::StorageGateway::DescribeAvailabilityMonitorTestOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DescribeAvailabilityMonitorTest>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAvailabilityMonitorTest in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

