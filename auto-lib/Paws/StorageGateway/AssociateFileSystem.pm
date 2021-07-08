
package Paws::StorageGateway::AssociateFileSystem;
  use Moose;
  has AuditDestinationARN => (is => 'ro', isa => 'Str');
  has CacheAttributes => (is => 'ro', isa => 'Paws::StorageGateway::CacheAttributes');
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has LocationARN => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Tag]');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateFileSystem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::AssociateFileSystemOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::AssociateFileSystem - Arguments for method AssociateFileSystem on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateFileSystem on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method AssociateFileSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateFileSystem.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $AssociateFileSystemOutput = $storagegateway->AssociateFileSystem(
      ClientToken         => 'MyClientToken',
      GatewayARN          => 'MyGatewayARN',
      LocationARN         => 'MyFileSystemLocationARN',
      Password            => 'MyDomainUserPassword',
      UserName            => 'MyDomainUserName',
      AuditDestinationARN => 'MyAuditDestinationARN',     # OPTIONAL
      CacheAttributes     => {
        CacheStaleTimeoutInSeconds => 1,                  # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $FileSystemAssociationARN =
      $AssociateFileSystemOutput->FileSystemAssociationARN;

    # Returns a L<Paws::StorageGateway::AssociateFileSystemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/AssociateFileSystem>

=head1 ATTRIBUTES


=head2 AuditDestinationARN => Str

The Amazon Resource Name (ARN) of the storage used for the audit logs.



=head2 CacheAttributes => L<Paws::StorageGateway::CacheAttributes>





=head2 B<REQUIRED> ClientToken => Str

A unique string value that you supply that is used by the file gateway
to ensure idempotent file system association creation.



=head2 B<REQUIRED> GatewayARN => Str





=head2 B<REQUIRED> LocationARN => Str

The Amazon Resource Name (ARN) of the Amazon FSx file system to
associate with the Amazon FSx file gateway.



=head2 B<REQUIRED> Password => Str

The password of the user credential.



=head2 Tags => ArrayRef[L<Paws::StorageGateway::Tag>]

A list of up to 50 tags that can be assigned to the file system
association. Each tag is a key-value pair.



=head2 B<REQUIRED> UserName => Str

The user name of the user credential that has permission to access the
root share D$ of the Amazon FSx file system. The user account must
belong to the Amazon FSx delegated admin user group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateFileSystem in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

