
package Paws::StorageGateway::AddWorkingStorage;
  use Moose;
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddWorkingStorage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::AddWorkingStorageOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::AddWorkingStorage - Arguments for method AddWorkingStorage on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddWorkingStorage on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method AddWorkingStorage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddWorkingStorage.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To add storage on local disk
    # Configures one or more gateway local disks as working storage for a
    # gateway. (Working storage is also referred to as upload buffer.)
    my $AddWorkingStorageOutput = $storagegateway->AddWorkingStorage(
      {
        'DiskIds' =>
          [ 'pci-0000:03:00.0-scsi-0:0:0:0', 'pci-0000:03:00.0-scsi-0:0:1:0' ],
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B'
      }
    );

    # Results:
    my $GatewayARN = $AddWorkingStorageOutput->GatewayARN;

    # Returns a L<Paws::StorageGateway::AddWorkingStorageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/AddWorkingStorage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DiskIds => ArrayRef[Str|Undef]

An array of strings that identify disks that are to be configured as
working storage. Each string have a minimum length of 1 and maximum
length of 300. You can get the disk IDs from the ListLocalDisks API.



=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddWorkingStorage in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

