
package Paws::StorageGateway::CreateSnapshot;
  use Moose;
  has SnapshotDescription => (is => 'ro', isa => 'Str', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::CreateSnapshotOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateSnapshot - Arguments for method CreateSnapshot on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSnapshot on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method CreateSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSnapshot.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To create a snapshot of a gateway volume
    # Initiates an ad-hoc snapshot of a gateway volume.
    my $CreateSnapshotOutput = $storagegateway->CreateSnapshot(
      {
        'SnapshotDescription' => 'My root volume snapshot as of 10/03/2017',
        'VolumeARN' =>
'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB'
      }
    );

    # Results:
    my $SnapshotId = $CreateSnapshotOutput->SnapshotId;
    my $VolumeARN  = $CreateSnapshotOutput->VolumeARN;

    # Returns a L<Paws::StorageGateway::CreateSnapshotOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CreateSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotDescription => Str

Textual description of the snapshot that appears in the Amazon EC2
console, Elastic Block Store snapshots panel in the B<Description>
field, and in the AWS Storage Gateway snapshot B<Details> pane,
B<Description> field



=head2 B<REQUIRED> VolumeARN => Str

The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
operation to return a list of gateway volumes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSnapshot in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

