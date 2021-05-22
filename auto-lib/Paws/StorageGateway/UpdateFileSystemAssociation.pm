
package Paws::StorageGateway::UpdateFileSystemAssociation;
  use Moose;
  has AuditDestinationARN => (is => 'ro', isa => 'Str');
  has CacheAttributes => (is => 'ro', isa => 'Paws::StorageGateway::CacheAttributes');
  has FileSystemAssociationARN => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFileSystemAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateFileSystemAssociationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateFileSystemAssociation - Arguments for method UpdateFileSystemAssociation on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFileSystemAssociation on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateFileSystemAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFileSystemAssociation.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $UpdateFileSystemAssociationOutput =
      $storagegateway->UpdateFileSystemAssociation(
      FileSystemAssociationARN => 'MyFileSystemAssociationARN',
      AuditDestinationARN      => 'MyAuditDestinationARN',        # OPTIONAL
      CacheAttributes          => {
        CacheStaleTimeoutInSeconds => 1,                          # OPTIONAL
      },    # OPTIONAL
      Password => 'MyDomainUserPassword',    # OPTIONAL
      UserName => 'MyDomainUserName',        # OPTIONAL
      );

    # Results:
    my $FileSystemAssociationARN =
      $UpdateFileSystemAssociationOutput->FileSystemAssociationARN;

  # Returns a L<Paws::StorageGateway::UpdateFileSystemAssociationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateFileSystemAssociation>

=head1 ATTRIBUTES


=head2 AuditDestinationARN => Str

The Amazon Resource Name (ARN) of the storage used for the audit logs.



=head2 CacheAttributes => L<Paws::StorageGateway::CacheAttributes>





=head2 B<REQUIRED> FileSystemAssociationARN => Str

The Amazon Resource Name (ARN) of the file system association that you
want to update.



=head2 Password => Str

The password of the user credential.



=head2 UserName => Str

The user name of the user credential that has permission to access the
root share D$ of the Amazon FSx file system. The user account must
belong to the Amazon FSx delegated admin user group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFileSystemAssociation in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

