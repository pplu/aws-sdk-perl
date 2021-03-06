
package Paws::EC2::DetachVolume;
  use Moose;
  has Device => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Force => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::VolumeAttachment');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DetachVolume - Arguments for method DetachVolume on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachVolume on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DetachVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachVolume.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
# To detach a volume from an instance
# This example detaches the volume (``vol-049df61146c4d7901``) from the instance
# it is attached to.
    my $VolumeAttachment =
      $ec2->DetachVolume( 'VolumeId' => 'vol-1234567890abcdef0' );

    # Results:
    my $AttachTime = $VolumeAttachment->AttachTime;
    my $Device     = $VolumeAttachment->Device;
    my $InstanceId = $VolumeAttachment->InstanceId;
    my $State      = $VolumeAttachment->State;
    my $VolumeId   = $VolumeAttachment->VolumeId;

    # Returns a L<Paws::EC2::VolumeAttachment> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DetachVolume>

=head1 ATTRIBUTES


=head2 Device => Str

The device name.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Force => Bool

Forces detachment if the previous detachment attempt did not occur
cleanly (for example, logging into an instance, unmounting the volume,
and detaching normally). This option can lead to data loss or a
corrupted file system. Use this option only as a last resort to detach
a volume from a failed instance. The instance won't have an opportunity
to flush file system caches or file system metadata. If you use this
option, you must perform file system check and repair procedures.



=head2 InstanceId => Str

The ID of the instance. If you are detaching a Multi-Attach enabled
volume, you must specify an instance ID.



=head2 B<REQUIRED> VolumeId => Str

The ID of the volume.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachVolume in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

