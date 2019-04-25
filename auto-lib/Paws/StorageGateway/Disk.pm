package Paws::StorageGateway::Disk;
  use Moose;
  has DiskAllocationResource => (is => 'ro', isa => 'Str');
  has DiskAllocationType => (is => 'ro', isa => 'Str');
  has DiskAttributeList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DiskId => (is => 'ro', isa => 'Str');
  has DiskNode => (is => 'ro', isa => 'Str');
  has DiskPath => (is => 'ro', isa => 'Str');
  has DiskSizeInBytes => (is => 'ro', isa => 'Int');
  has DiskStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::Disk

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::Disk object:

  $service_obj->Method(Att1 => { DiskAllocationResource => $value, ..., DiskStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::Disk object:

  $result = $service_obj->Method(...);
  $result->Att1->DiskAllocationResource

=head1 DESCRIPTION

Represents a gateway's local disk.

=head1 ATTRIBUTES


=head2 DiskAllocationResource => Str

  The iSCSI qualified name (IQN) that is defined for a disk. This field
is not included in the response if the local disk is not defined as an
iSCSI target. The format of this field is
I<targetIqn::LUNNumber::region-volumeId>.


=head2 DiskAllocationType => Str

  


=head2 DiskAttributeList => ArrayRef[Str|Undef]

  


=head2 DiskId => Str

  The unique device ID or other distinguishing data that identifies a
local disk.


=head2 DiskNode => Str

  The device node of a local disk as assigned by the virtualization
environment.


=head2 DiskPath => Str

  The path of a local disk in the gateway virtual machine (VM).


=head2 DiskSizeInBytes => Int

  The local disk size in bytes.


=head2 DiskStatus => Str

  A value that represents the status of a local disk.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

