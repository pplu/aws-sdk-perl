
use Paws::API;


package Paws::StorageGateway {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'storagegateway');
  has version => (is => 'ro', isa => 'Str', default => '2013-06-30');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'StorageGateway_20130630');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub ActivateGateway {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ActivateGateway', @_);
  }
  sub AddCache {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::AddCache', @_);
  }
  sub AddUploadBuffer {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::AddUploadBuffer', @_);
  }
  sub AddWorkingStorage {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::AddWorkingStorage', @_);
  }
  sub CancelArchival {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CancelArchival', @_);
  }
  sub CancelRetrieval {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CancelRetrieval', @_);
  }
  sub CreateCachediSCSIVolume {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CreateCachediSCSIVolume', @_);
  }
  sub CreateSnapshot {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CreateSnapshot', @_);
  }
  sub CreateSnapshotFromVolumeRecoveryPoint {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint', @_);
  }
  sub CreateStorediSCSIVolume {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CreateStorediSCSIVolume', @_);
  }
  sub CreateTapes {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CreateTapes', @_);
  }
  sub DeleteBandwidthRateLimit {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteBandwidthRateLimit', @_);
  }
  sub DeleteChapCredentials {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteChapCredentials', @_);
  }
  sub DeleteGateway {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteGateway', @_);
  }
  sub DeleteSnapshotSchedule {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteSnapshotSchedule', @_);
  }
  sub DeleteTape {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteTape', @_);
  }
  sub DeleteTapeArchive {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteTapeArchive', @_);
  }
  sub DeleteVolume {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteVolume', @_);
  }
  sub DescribeBandwidthRateLimit {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeBandwidthRateLimit', @_);
  }
  sub DescribeCache {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeCache', @_);
  }
  sub DescribeCachediSCSIVolumes {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeCachediSCSIVolumes', @_);
  }
  sub DescribeChapCredentials {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeChapCredentials', @_);
  }
  sub DescribeGatewayInformation {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeGatewayInformation', @_);
  }
  sub DescribeMaintenanceStartTime {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeMaintenanceStartTime', @_);
  }
  sub DescribeSnapshotSchedule {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeSnapshotSchedule', @_);
  }
  sub DescribeStorediSCSIVolumes {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeStorediSCSIVolumes', @_);
  }
  sub DescribeTapeArchives {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeTapeArchives', @_);
  }
  sub DescribeTapeRecoveryPoints {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeTapeRecoveryPoints', @_);
  }
  sub DescribeTapes {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeTapes', @_);
  }
  sub DescribeUploadBuffer {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeUploadBuffer', @_);
  }
  sub DescribeVTLDevices {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeVTLDevices', @_);
  }
  sub DescribeWorkingStorage {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeWorkingStorage', @_);
  }
  sub DisableGateway {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DisableGateway', @_);
  }
  sub ListGateways {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ListGateways', @_);
  }
  sub ListLocalDisks {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ListLocalDisks', @_);
  }
  sub ListVolumeRecoveryPoints {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ListVolumeRecoveryPoints', @_);
  }
  sub ListVolumes {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ListVolumes', @_);
  }
  sub RetrieveTapeArchive {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::RetrieveTapeArchive', @_);
  }
  sub RetrieveTapeRecoveryPoint {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::RetrieveTapeRecoveryPoint', @_);
  }
  sub ShutdownGateway {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ShutdownGateway', @_);
  }
  sub StartGateway {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::StartGateway', @_);
  }
  sub UpdateBandwidthRateLimit {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateBandwidthRateLimit', @_);
  }
  sub UpdateChapCredentials {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateChapCredentials', @_);
  }
  sub UpdateGatewayInformation {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateGatewayInformation', @_);
  }
  sub UpdateGatewaySoftwareNow {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateGatewaySoftwareNow', @_);
  }
  sub UpdateMaintenanceStartTime {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateMaintenanceStartTime', @_);
  }
  sub UpdateSnapshotSchedule {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateSnapshotSchedule', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway - Perl Interface to AWS AWS Storage Gateway

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS Storage Gateway Service

AWS Storage Gateway is the service that connects an on-premises
software appliance with cloud-based storage to provide seamless and
secure integration between an organization's on-premises IT environment
and AWS's storage infrastructure. The service enables you to securely
upload data to the AWS cloud for cost effective backup and rapid
disaster recovery.

Use the following links to get started using the I<AWS Storage Gateway
Service API Reference>:

=over

=item * AWS Storage Gateway Required Request Headers: Describes the
required headers that you must send with every POST request to AWS
Storage Gateway.

=item * Signing Requests: AWS Storage Gateway requires that you
authenticate every request you send; this topic describes how sign such
a request.

=item * Error Responses: Provides reference information about AWS
Storage Gateway errors.

=item * Operations in AWS Storage Gateway: Contains detailed
descriptions of all AWS Storage Gateway operations, their request
parameters, response elements, possible errors, and examples of
requests and responses.

=item * AWS Storage Gateway Regions and Endpoints: Provides a list of
each of the regions and endpoints available for use with AWS Storage
Gateway.

=back










=head1 METHODS

=head2 ActivateGateway()

  Arguments described in: L<Paws::StorageGateway::ActivateGateway>

  Returns: L<Paws::StorageGateway::ActivateGatewayOutput>

  

This operation activates the gateway you previously deployed on your
host. For more information, see Activate the AWS Storage Gateway. In
the activation process, you specify information such as the region you
want to use for storing snapshots, the time zone for scheduled
snapshots the gateway snapshot schedule window, an activation key, and
a name for your gateway. The activation process also associates your
gateway with your account; for more information, see
UpdateGatewayInformation.











=head2 AddCache()

  Arguments described in: L<Paws::StorageGateway::AddCache>

  Returns: L<Paws::StorageGateway::AddCacheOutput>

  

This operation configures one or more gateway local disks as cache for
a cached-volume gateway. This operation is supported only for the
gateway-cached volume architecture (see Storage Gateway Concepts).

In the request, you specify the gateway Amazon Resource Name (ARN) to
which you want to add cache, and one or more disk IDs that you want to
configure as cache.











=head2 AddUploadBuffer()

  Arguments described in: L<Paws::StorageGateway::AddUploadBuffer>

  Returns: L<Paws::StorageGateway::AddUploadBufferOutput>

  

This operation configures one or more gateway local disks as upload
buffer for a specified gateway. This operation is supported for both
the gateway-stored and gateway-cached volume architectures.

In the request, you specify the gateway Amazon Resource Name (ARN) to
which you want to add upload buffer, and one or more disk IDs that you
want to configure as upload buffer.











=head2 AddWorkingStorage()

  Arguments described in: L<Paws::StorageGateway::AddWorkingStorage>

  Returns: L<Paws::StorageGateway::AddWorkingStorageOutput>

  

This operation configures one or more gateway local disks as working
storage for a gateway. This operation is supported only for the
gateway-stored volume architecture. This operation is deprecated method
in cached-volumes API version (20120630). Use AddUploadBuffer instead.

In the request, you specify the gateway Amazon Resource Name (ARN) to
which you want to add working storage, and one or more disk IDs that
you want to configure as working storage.











=head2 CancelArchival()

  Arguments described in: L<Paws::StorageGateway::CancelArchival>

  Returns: L<Paws::StorageGateway::CancelArchivalOutput>

  

Cancels archiving of a virtual tape to the virtual tape shelf (VTS)
after the archiving process is initiated.











=head2 CancelRetrieval()

  Arguments described in: L<Paws::StorageGateway::CancelRetrieval>

  Returns: L<Paws::StorageGateway::CancelRetrievalOutput>

  

Cancels retrieval of a virtual tape from the virtual tape shelf (VTS)
to a gateway after the retrieval process is initiated. The virtual tape
is returned to the VTS.











=head2 CreateCachediSCSIVolume()

  Arguments described in: L<Paws::StorageGateway::CreateCachediSCSIVolume>

  Returns: L<Paws::StorageGateway::CreateCachediSCSIVolumeOutput>

  

This operation creates a cached volume on a specified cached gateway.
This operation is supported only for the gateway-cached volume
architecture.

In the request, you must specify the gateway, size of the volume in
bytes, the iSCSI target name, an IP address on which to expose the
target, and a unique client token. In response, AWS Storage Gateway
creates the volume and returns information about it such as the volume
Amazon Resource Name (ARN), its size, and the iSCSI target ARN that
initiators can use to connect to the volume target.











=head2 CreateSnapshot()

  Arguments described in: L<Paws::StorageGateway::CreateSnapshot>

  Returns: L<Paws::StorageGateway::CreateSnapshotOutput>

  

This operation initiates a snapshot of a volume.

AWS Storage Gateway provides the ability to back up point-in-time
snapshots of your data to Amazon Simple Storage (S3) for durable
off-site recovery, as well as import the data to an Amazon Elastic
Block Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You can
take snapshots of your gateway volume on a scheduled or ad-hoc basis.
This API enables you to take ad-hoc snapshot. For more information, see
Working With Snapshots in the AWS Storage Gateway Console.

In the CreateSnapshot request you identify the volume by providing its
Amazon Resource Name (ARN). You must also provide description for the
snapshot. When AWS Storage Gateway takes the snapshot of specified
volume, the snapshot and description appears in the AWS Storage Gateway
Console. In response, AWS Storage Gateway returns you a snapshot ID.
You can use this snapshot ID to check the snapshot progress or later
use it when you want to create a volume from a snapshot.











=head2 CreateSnapshotFromVolumeRecoveryPoint()

  Arguments described in: L<Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint>

  Returns: L<Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointOutput>

  

This operation initiates a snapshot of a gateway from a volume recovery
point. This operation is supported only for the gateway-cached volume
architecture (see ).

A volume recovery point is a point in time at which all data of the
volume is consistent and from which you can create a snapshot. To get a
list of volume recovery point for gateway-cached volumes, use
ListVolumeRecoveryPoints.

In the C<CreateSnapshotFromVolumeRecoveryPoint> request, you identify
the volume by providing its Amazon Resource Name (ARN). You must also
provide a description for the snapshot. When AWS Storage Gateway takes
a snapshot of the specified volume, the snapshot and its description
appear in the AWS Storage Gateway console. In response, AWS Storage
Gateway returns you a snapshot ID. You can use this snapshot ID to
check the snapshot progress or later use it when you want to create a
volume from a snapshot.











=head2 CreateStorediSCSIVolume()

  Arguments described in: L<Paws::StorageGateway::CreateStorediSCSIVolume>

  Returns: L<Paws::StorageGateway::CreateStorediSCSIVolumeOutput>

  

This operation creates a volume on a specified gateway. This operation
is supported only for the gateway-stored volume architecture.

The size of the volume to create is inferred from the disk size. You
can choose to preserve existing data on the disk, create volume from an
existing snapshot, or create an empty volume. If you choose to create
an empty gateway volume, then any existing data on the disk is erased.

In the request you must specify the gateway and the disk information on
which you are creating the volume. In response, AWS Storage Gateway
creates the volume and returns volume information such as the volume
Amazon Resource Name (ARN), its size, and the iSCSI target ARN that
initiators can use to connect to the volume target.











=head2 CreateTapes()

  Arguments described in: L<Paws::StorageGateway::CreateTapes>

  Returns: L<Paws::StorageGateway::CreateTapesOutput>

  

Creates one or more virtual tapes. You write data to the virtual tapes
and then archive the tapes.











=head2 DeleteBandwidthRateLimit()

  Arguments described in: L<Paws::StorageGateway::DeleteBandwidthRateLimit>

  Returns: L<Paws::StorageGateway::DeleteBandwidthRateLimitOutput>

  

This operation deletes the bandwidth rate limits of a gateway. You can
delete either the upload and download bandwidth rate limit, or you can
delete both. If you delete only one of the limits, the other limit
remains unchanged. To specify which gateway to work with, use the
Amazon Resource Name (ARN) of the gateway in your request.











=head2 DeleteChapCredentials()

  Arguments described in: L<Paws::StorageGateway::DeleteChapCredentials>

  Returns: L<Paws::StorageGateway::DeleteChapCredentialsOutput>

  

This operation deletes Challenge-Handshake Authentication Protocol
(CHAP) credentials for a specified iSCSI target and initiator pair.











=head2 DeleteGateway()

  Arguments described in: L<Paws::StorageGateway::DeleteGateway>

  Returns: L<Paws::StorageGateway::DeleteGatewayOutput>

  

This operation deletes a gateway. To specify which gateway to delete,
use the Amazon Resource Name (ARN) of the gateway in your request. The
operation deletes the gateway; however, it does not delete the gateway
virtual machine (VM) from your host computer.

After you delete a gateway, you cannot reactivate it. Completed
snapshots of the gateway volumes are not deleted upon deleting the
gateway, however, pending snapshots will not complete. After you delete
a gateway, your next step is to remove it from your environment.

You no longer pay software charges after the gateway is deleted;
however, your existing Amazon EBS snapshots persist and you will
continue to be billed for these snapshots.E<Acirc> You can choose to
remove all remaining Amazon EBS snapshots by canceling your Amazon EC2
subscription.E<Acirc> If you prefer not to cancel your Amazon EC2
subscription, you can delete your snapshots using the Amazon EC2
console. For more information, see the AWS Storage Gateway Detail Page.











=head2 DeleteSnapshotSchedule()

  Arguments described in: L<Paws::StorageGateway::DeleteSnapshotSchedule>

  Returns: L<Paws::StorageGateway::DeleteSnapshotScheduleOutput>

  

This operation deletes a snapshot of a volume.

You can take snapshots of your gateway volumes on a scheduled or ad-hoc
basis. This API enables you to delete a snapshot schedule for a volume.
For more information, see Working with Snapshots. In the
C<DeleteSnapshotSchedule> request, you identify the volume by providing
its Amazon Resource Name (ARN).











=head2 DeleteTape()

  Arguments described in: L<Paws::StorageGateway::DeleteTape>

  Returns: L<Paws::StorageGateway::DeleteTapeOutput>

  

Deletes the specified virtual tape.











=head2 DeleteTapeArchive()

  Arguments described in: L<Paws::StorageGateway::DeleteTapeArchive>

  Returns: L<Paws::StorageGateway::DeleteTapeArchiveOutput>

  

Deletes the specified virtual tape from the virtual tape shelf (VTS).











=head2 DeleteVolume()

  Arguments described in: L<Paws::StorageGateway::DeleteVolume>

  Returns: L<Paws::StorageGateway::DeleteVolumeOutput>

  

This operation delete the specified gateway volume that you previously
created using the CreateStorediSCSIVolume API. For gateway-stored
volumes, the local disk that was configured as the storage volume is
not deleted. You can reuse the local disk to create another storage
volume.

Before you delete a gateway volume, make sure there are no iSCSI
connections to the volume you are deleting. You should also make sure
there is no snapshot in progress. You can use the Amazon Elastic
Compute Cloud (Amazon EC2) API to query snapshots on the volume you are
deleting and check the snapshot status. For more information, go to
DescribeSnapshots in the I<Amazon Elastic Compute Cloud API Reference>.

In the request, you must provide the Amazon Resource Name (ARN) of the
storage volume you want to delete.











=head2 DescribeBandwidthRateLimit()

  Arguments described in: L<Paws::StorageGateway::DescribeBandwidthRateLimit>

  Returns: L<Paws::StorageGateway::DescribeBandwidthRateLimitOutput>

  

This operation returns the bandwidth rate limits of a gateway. By
default, these limits are not set, which means no bandwidth rate
limiting is in effect.

This operation only returns a value for a bandwidth rate limit only if
the limit is set. If no limits are set for the gateway, then this
operation returns only the gateway ARN in the response body. To specify
which gateway to describe, use the Amazon Resource Name (ARN) of the
gateway in your request.











=head2 DescribeCache()

  Arguments described in: L<Paws::StorageGateway::DescribeCache>

  Returns: L<Paws::StorageGateway::DescribeCacheOutput>

  

This operation returns information about the cache of a gateway. This
operation is supported only for the gateway-cached volume architecture.

The response includes disk IDs that are configured as cache, and it
includes the amount of cache allocated and used.











=head2 DescribeCachediSCSIVolumes()

  Arguments described in: L<Paws::StorageGateway::DescribeCachediSCSIVolumes>

  Returns: L<Paws::StorageGateway::DescribeCachediSCSIVolumesOutput>

  

This operation returns a description of the gateway volumes specified
in the request. This operation is supported only for the gateway-cached
volume architecture.

The list of gateway volumes in the request must be from one gateway. In
the response Amazon Storage Gateway returns volume information sorted
by volume Amazon Resource Name (ARN).











=head2 DescribeChapCredentials()

  Arguments described in: L<Paws::StorageGateway::DescribeChapCredentials>

  Returns: L<Paws::StorageGateway::DescribeChapCredentialsOutput>

  

This operation returns an array of Challenge-Handshake Authentication
Protocol (CHAP) credentials information for a specified iSCSI target,
one for each target-initiator pair.











=head2 DescribeGatewayInformation()

  Arguments described in: L<Paws::StorageGateway::DescribeGatewayInformation>

  Returns: L<Paws::StorageGateway::DescribeGatewayInformationOutput>

  

This operation returns metadata about a gateway such as its name,
network interfaces, configured time zone, and the state (whether the
gateway is running or not). To specify which gateway to describe, use
the Amazon Resource Name (ARN) of the gateway in your request.











=head2 DescribeMaintenanceStartTime()

  Arguments described in: L<Paws::StorageGateway::DescribeMaintenanceStartTime>

  Returns: L<Paws::StorageGateway::DescribeMaintenanceStartTimeOutput>

  

This operation returns your gateway's weekly maintenance start time
including the day and time of the week. Note that values are in terms
of the gateway's time zone.











=head2 DescribeSnapshotSchedule()

  Arguments described in: L<Paws::StorageGateway::DescribeSnapshotSchedule>

  Returns: L<Paws::StorageGateway::DescribeSnapshotScheduleOutput>

  

This operation describes the snapshot schedule for the specified
gateway volume. The snapshot schedule information includes intervals at
which snapshots are automatically initiated on the volume.











=head2 DescribeStorediSCSIVolumes()

  Arguments described in: L<Paws::StorageGateway::DescribeStorediSCSIVolumes>

  Returns: L<Paws::StorageGateway::DescribeStorediSCSIVolumesOutput>

  

This operation returns description of the gateway volumes specified in
the request. The list of gateway volumes in the request must be from
one gateway. In the response Amazon Storage Gateway returns volume
information sorted by volume ARNs.











=head2 DescribeTapeArchives()

  Arguments described in: L<Paws::StorageGateway::DescribeTapeArchives>

  Returns: L<Paws::StorageGateway::DescribeTapeArchivesOutput>

  

Returns a description of specified virtual tapes in the virtual tape
shelf (VTS).

If a specific C<TapeARN> is not specified, AWS Storage Gateway returns
a description of all virtual tapes found in the VTS associated with
your account.











=head2 DescribeTapeRecoveryPoints()

  Arguments described in: L<Paws::StorageGateway::DescribeTapeRecoveryPoints>

  Returns: L<Paws::StorageGateway::DescribeTapeRecoveryPointsOutput>

  

Returns a list of virtual tape recovery points that are available for
the specified gateway-VTL.

A recovery point is a point in time view of a virtual tape at which all
the data on the virtual tape is consistent. If your gateway crashes,
virtual tapes that have recovery points can be recovered to a new
gateway.











=head2 DescribeTapes()

  Arguments described in: L<Paws::StorageGateway::DescribeTapes>

  Returns: L<Paws::StorageGateway::DescribeTapesOutput>

  

Returns a description of the specified Amazon Resource Name (ARN) of
virtual tapes. If a C<TapeARN> is not specified, returns a description
of all virtual tapes associated with the specified gateway.











=head2 DescribeUploadBuffer()

  Arguments described in: L<Paws::StorageGateway::DescribeUploadBuffer>

  Returns: L<Paws::StorageGateway::DescribeUploadBufferOutput>

  

This operation returns information about the upload buffer of a
gateway. This operation is supported for both the gateway-stored and
gateway-cached volume architectures.

The response includes disk IDs that are configured as upload buffer
space, and it includes the amount of upload buffer space allocated and
used.











=head2 DescribeVTLDevices()

  Arguments described in: L<Paws::StorageGateway::DescribeVTLDevices>

  Returns: L<Paws::StorageGateway::DescribeVTLDevicesOutput>

  

Returns a description of virtual tape library (VTL) devices for the
specified gateway. In the response, AWS Storage Gateway returns VTL
device information.

The list of VTL devices must be from one gateway.











=head2 DescribeWorkingStorage()

  Arguments described in: L<Paws::StorageGateway::DescribeWorkingStorage>

  Returns: L<Paws::StorageGateway::DescribeWorkingStorageOutput>

  

This operation returns information about the working storage of a
gateway. This operation is supported only for the gateway-stored volume
architecture. This operation is deprecated in cached-volumes API
version (20120630). Use DescribeUploadBuffer instead.

The response includes disk IDs that are configured as working storage,
and it includes the amount of working storage allocated and used.











=head2 DisableGateway()

  Arguments described in: L<Paws::StorageGateway::DisableGateway>

  Returns: L<Paws::StorageGateway::DisableGatewayOutput>

  

Disables a gateway when the gateway is no longer functioning. For
example, if your gateway VM is damaged, you can disable the gateway so
you can recover virtual tapes.

Use this operation for a gateway-VTL that is not reachable or not
functioning.

Once a gateway is disabled it cannot be enabled.











=head2 ListGateways()

  Arguments described in: L<Paws::StorageGateway::ListGateways>

  Returns: L<Paws::StorageGateway::ListGatewaysOutput>

  

This operation lists gateways owned by an AWS account in a region
specified in the request. The returned list is ordered by gateway
Amazon Resource Name (ARN).

By default, the operation returns a maximum of 100 gateways. This
operation supports pagination that allows you to optionally reduce the
number of gateways returned in a response.

If you have more gateways than are returned in a response-that is, the
response returns only a truncated list of your gateways-the response
contains a marker that you can specify in your next request to fetch
the next page of gateways.











=head2 ListLocalDisks()

  Arguments described in: L<Paws::StorageGateway::ListLocalDisks>

  Returns: L<Paws::StorageGateway::ListLocalDisksOutput>

  

This operation returns a list of the local disks of a gateway. To
specify which gateway to describe you use the Amazon Resource Name
(ARN) of the gateway in the body of the request.

The request returns all disks, specifying which are configured as
working storage, stored volume or not configured at all.











=head2 ListVolumeRecoveryPoints()

  Arguments described in: L<Paws::StorageGateway::ListVolumeRecoveryPoints>

  Returns: L<Paws::StorageGateway::ListVolumeRecoveryPointsOutput>

  

This operation lists the recovery points for a specified gateway. This
operation is supported only for the gateway-cached volume architecture.

Each gateway-cached volume has one recovery point. A volume recovery
point is a point in time at which all data of the volume is consistent
and from which you can create a snapshot. To create a snapshot from a
volume recovery point use the CreateSnapshotFromVolumeRecoveryPoint
operation.











=head2 ListVolumes()

  Arguments described in: L<Paws::StorageGateway::ListVolumes>

  Returns: L<Paws::StorageGateway::ListVolumesOutput>

  

This operation lists the iSCSI stored volumes of a gateway. Results are
sorted by volume ARN. The response includes only the volume ARNs. If
you want additional volume information, use the
DescribeStorediSCSIVolumes API.

The operation supports pagination. By default, the operation returns a
maximum of up to 100 volumes. You can optionally specify the C<Limit>
field in the body to limit the number of volumes in the response. If
the number of volumes returned in the response is truncated, the
response includes a Marker field. You can use this Marker value in your
subsequent request to retrieve the next set of volumes.











=head2 RetrieveTapeArchive()

  Arguments described in: L<Paws::StorageGateway::RetrieveTapeArchive>

  Returns: L<Paws::StorageGateway::RetrieveTapeArchiveOutput>

  

Retrieves an archived virtual tape from the virtual tape shelf (VTS) to
a gateway-VTL. Virtual tapes archived in the VTS are not associated
with any gateway. However after a tape is retrieved, it is associated
with a gateway, even though it is also listed in the VTS.

Once a tape is successfully retrieved to a gateway, it cannot be
retrieved again to another gateway. You must archive the tape again
before you can retrieve it to another gateway.











=head2 RetrieveTapeRecoveryPoint()

  Arguments described in: L<Paws::StorageGateway::RetrieveTapeRecoveryPoint>

  Returns: L<Paws::StorageGateway::RetrieveTapeRecoveryPointOutput>

  

Retrieves the recovery point for the specified virtual tape.

A recovery point is a point in time view of a virtual tape at which all
the data on the tape is consistent. If your gateway crashes, virtual
tapes that have recovery points can be recovered to a new gateway.











=head2 ShutdownGateway()

  Arguments described in: L<Paws::StorageGateway::ShutdownGateway>

  Returns: L<Paws::StorageGateway::ShutdownGatewayOutput>

  

This operation shuts down a gateway. To specify which gateway to shut
down, use the Amazon Resource Name (ARN) of the gateway in the body of
your request.

The operation shuts down the gateway service component running in the
storage gateway's virtual machine (VM) and not the VM.

After the gateway is shutdown, you cannot call any other API except
StartGateway, DescribeGatewayInformation, and ListGateways. For more
information, see ActivateGateway. Your applications cannot read from or
write to the gateway's storage volumes, and there are no snapshots
taken.

If do not intend to use the gateway again, you must delete the gateway
(using DeleteGateway) to no longer pay software charges associated with
the gateway.











=head2 StartGateway()

  Arguments described in: L<Paws::StorageGateway::StartGateway>

  Returns: L<Paws::StorageGateway::StartGatewayOutput>

  

This operation starts a gateway that you previously shut down (see
ShutdownGateway). After the gateway starts, you can then make other API
calls, your applications can read from or write to the gateway's
storage volumes and you will be able to take snapshot backups.

To specify which gateway to start, use the Amazon Resource Name (ARN)
of the gateway in your request.











=head2 UpdateBandwidthRateLimit()

  Arguments described in: L<Paws::StorageGateway::UpdateBandwidthRateLimit>

  Returns: L<Paws::StorageGateway::UpdateBandwidthRateLimitOutput>

  

This operation updates the bandwidth rate limits of a gateway. You can
update both the upload and download bandwidth rate limit or specify
only one of the two. If you don't set a bandwidth rate limit, the
existing rate limit remains.

By default, a gateway's bandwidth rate limits are not set. If you don't
set any limit, the gateway does not have any limitations on its
bandwidth usage and could potentially use the maximum available
bandwidth.

To specify which gateway to update, use the Amazon Resource Name (ARN)
of the gateway in your request.











=head2 UpdateChapCredentials()

  Arguments described in: L<Paws::StorageGateway::UpdateChapCredentials>

  Returns: L<Paws::StorageGateway::UpdateChapCredentialsOutput>

  

This operation updates the Challenge-Handshake Authentication Protocol
(CHAP) credentials for a specified iSCSI target. By default, a gateway
does not have CHAP enabled; however, for added security, you might use
it.

When you update CHAP credentials, all existing connections on the
target are closed and initiators must reconnect with the new
credentials.











=head2 UpdateGatewayInformation()

  Arguments described in: L<Paws::StorageGateway::UpdateGatewayInformation>

  Returns: L<Paws::StorageGateway::UpdateGatewayInformationOutput>

  

This operation updates a gateway's metadata, which includes the
gateway's name and time zone. To specify which gateway to update, use
the Amazon Resource Name (ARN) of the gateway in your request.











=head2 UpdateGatewaySoftwareNow()

  Arguments described in: L<Paws::StorageGateway::UpdateGatewaySoftwareNow>

  Returns: L<Paws::StorageGateway::UpdateGatewaySoftwareNowOutput>

  

This operation updates the gateway virtual machine (VM) software. The
request immediately triggers the software update.

A software update forces a system restart of your gateway. You can
minimize the chance of any disruption to your applications by
increasing your iSCSI Initiators' timeouts. For more information about
increasing iSCSI Initiator timeouts for Windows and Linux, see
Customizing Your Windows iSCSI Settings and Customizing Your Linux
iSCSI Settings, respectively.











=head2 UpdateMaintenanceStartTime()

  Arguments described in: L<Paws::StorageGateway::UpdateMaintenanceStartTime>

  Returns: L<Paws::StorageGateway::UpdateMaintenanceStartTimeOutput>

  

This operation updates a gateway's weekly maintenance start time
information, including day and time of the week. The maintenance time
is the time in your gateway's time zone.











=head2 UpdateSnapshotSchedule()

  Arguments described in: L<Paws::StorageGateway::UpdateSnapshotSchedule>

  Returns: L<Paws::StorageGateway::UpdateSnapshotScheduleOutput>

  

This operation updates a snapshot schedule configured for a gateway
volume.

The default snapshot schedule for volume is once every 24 hours,
starting at the creation time of the volume. You can use this API to
change the snapshot schedule configured for the volume.

In the request you must identify the gateway volume whose snapshot
schedule you want to update, and the schedule information, including
when you want the snapshot to begin on a day and the frequency (in
hours) of snapshots.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

