
package Paws::StorageGateway::ListVolumes;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVolumes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::ListVolumesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListVolumes - Arguments for method ListVolumes on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVolumes on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method ListVolumes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVolumes.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To list the iSCSI stored volumes of a gateway
    # Lists the iSCSI stored volumes of a gateway. Results are sorted by volume
    # ARN up to a maximum of 100 volumes.
    my $ListVolumesOutput = $storagegateway->ListVolumes(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B',
        'Limit'  => 2,
        'Marker' => 1
      }
    );

    # Results:
    my $GatewayARN  = $ListVolumesOutput->GatewayARN;
    my $Marker      = $ListVolumesOutput->Marker;
    my $VolumeInfos = $ListVolumesOutput->VolumeInfos;

    # Returns a L<Paws::StorageGateway::ListVolumesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/ListVolumes>

=head1 ATTRIBUTES


=head2 GatewayARN => Str





=head2 Limit => Int

Specifies that the list of volumes returned be limited to the specified
number of items.



=head2 Marker => Str

A string that indicates the position at which to begin the returned
list of volumes. Obtain the marker from the response of a previous List
iSCSI Volumes request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVolumes in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

