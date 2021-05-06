
package Paws::StorageGateway::DetachVolume;
  use Moose;
  has ForceDetach => (is => 'ro', isa => 'Bool');
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DetachVolumeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DetachVolume - Arguments for method DetachVolume on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachVolume on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DetachVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachVolume.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $DetachVolumeOutput = $storagegateway->DetachVolume(
      VolumeARN   => 'MyVolumeARN',
      ForceDetach => 1,               # OPTIONAL
    );

    # Results:
    my $VolumeARN = $DetachVolumeOutput->VolumeARN;

    # Returns a L<Paws::StorageGateway::DetachVolumeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DetachVolume>

=head1 ATTRIBUTES


=head2 ForceDetach => Bool

Set to C<true> to forcibly remove the iSCSI connection of the target
volume and detach the volume. The default is C<false>. If this value is
set to C<false>, you must manually disconnect the iSCSI connection from
the target volume.



=head2 B<REQUIRED> VolumeARN => Str

The Amazon Resource Name (ARN) of the volume to detach from the
gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachVolume in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

