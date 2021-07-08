
package Paws::StorageGateway::DisassociateFileSystem;
  use Moose;
  has FileSystemAssociationARN => (is => 'ro', isa => 'Str', required => 1);
  has ForceDelete => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateFileSystem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DisassociateFileSystemOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DisassociateFileSystem - Arguments for method DisassociateFileSystem on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateFileSystem on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DisassociateFileSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateFileSystem.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $DisassociateFileSystemOutput = $storagegateway->DisassociateFileSystem(
      FileSystemAssociationARN => 'MyFileSystemAssociationARN',
      ForceDelete              => 1,                              # OPTIONAL
    );

    # Results:
    my $FileSystemAssociationARN =
      $DisassociateFileSystemOutput->FileSystemAssociationARN;

    # Returns a L<Paws::StorageGateway::DisassociateFileSystemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DisassociateFileSystem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemAssociationARN => Str

The Amazon Resource Name (ARN) of the file system association to be
deleted.



=head2 ForceDelete => Bool

If this value is set to true, the operation disassociates an Amazon FSx
file system immediately. It ends all data uploads to the file system,
and the file system association enters the C<FORCE_DELETING> status. If
this value is set to false, the Amazon FSx file system does not
disassociate until all data is uploaded.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateFileSystem in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

