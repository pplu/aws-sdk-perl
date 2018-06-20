
package Paws::EC2::CreateSnapshot;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::Snapshot');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSnapshot - Arguments for method CreateSnapshot on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSnapshot on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSnapshot.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
   # To create a snapshot
   # This example creates a snapshot of the volume with a volume ID of
   # ``vol-1234567890abcdef0`` and a short description to identify the snapshot.
    my $Snapshot = $ec2->CreateSnapshot(
      {
        'Description' => 'This is my root volume snapshot.',
        'VolumeId'    => 'vol-1234567890abcdef0'
      }
    );

    # Results:
    my $Description = $Snapshot->Description;
    my $OwnerId     = $Snapshot->OwnerId;
    my $SnapshotId  = $Snapshot->SnapshotId;
    my $StartTime   = $Snapshot->StartTime;
    my $State       = $Snapshot->State;
    my $Tags        = $Snapshot->Tags;
    my $VolumeId    = $Snapshot->VolumeId;
    my $VolumeSize  = $Snapshot->VolumeSize;

    # Returns a L<Paws::EC2::Snapshot> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateSnapshot>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the snapshot.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the snapshot during creation.



=head2 B<REQUIRED> VolumeId => Str

The ID of the EBS volume.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSnapshot in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

