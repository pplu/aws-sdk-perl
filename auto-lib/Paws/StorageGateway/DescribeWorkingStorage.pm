
package Paws::StorageGateway::DescribeWorkingStorage;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkingStorage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeWorkingStorageOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeWorkingStorage - Arguments for method DescribeWorkingStorage on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkingStorage on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DescribeWorkingStorage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkingStorage.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To describe the working storage of a gateway [Depreciated]
    # This operation is supported only for the gateway-stored volume
    # architecture. This operation is deprecated in cached-volumes API version
    # (20120630). Use DescribeUploadBuffer instead.
    my $DescribeWorkingStorageOutput = $storagegateway->DescribeWorkingStorage(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B'
      }
    );

    # Results:
    my $DiskIds    = $DescribeWorkingStorageOutput->DiskIds;
    my $GatewayARN = $DescribeWorkingStorageOutput->GatewayARN;
    my $WorkingStorageAllocatedInBytes =
      $DescribeWorkingStorageOutput->WorkingStorageAllocatedInBytes;
    my $WorkingStorageUsedInBytes =
      $DescribeWorkingStorageOutput->WorkingStorageUsedInBytes;

    # Returns a L<Paws::StorageGateway::DescribeWorkingStorageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DescribeWorkingStorage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkingStorage in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

