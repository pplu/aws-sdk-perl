
package Paws::StorageGateway::DescribeStorediSCSIVolumes;
  use Moose;
  has VolumeARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStorediSCSIVolumes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeStorediSCSIVolumesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeStorediSCSIVolumes - Arguments for method DescribeStorediSCSIVolumes on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStorediSCSIVolumes on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DescribeStorediSCSIVolumes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStorediSCSIVolumes.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To describe the volumes of a gateway
    # Returns the description of the gateway volumes specified in the request
    # belonging to the same gateway.
    my $DescribeStorediSCSIVolumesOutput =
      $storagegateway->DescribeStorediSCSIVolumes(
      {
        'VolumeARNs' => [
'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB'
        ]
      }
      );

    # Results:
    my $StorediSCSIVolumes =
      $DescribeStorediSCSIVolumesOutput->StorediSCSIVolumes;

   # Returns a L<Paws::StorageGateway::DescribeStorediSCSIVolumesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DescribeStorediSCSIVolumes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VolumeARNs => ArrayRef[Str|Undef]

An array of strings where each string represents the Amazon Resource
Name (ARN) of a stored volume. All of the specified stored volumes must
from the same gateway. Use ListVolumes to get volume ARNs for a
gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStorediSCSIVolumes in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

