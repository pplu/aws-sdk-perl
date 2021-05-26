
package Paws::EFS::CreateAccessPoint;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has PosixUser => (is => 'ro', isa => 'Paws::EFS::PosixUser');
  has RootDirectory => (is => 'ro', isa => 'Paws::EFS::RootDirectory');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EFS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessPoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/access-points');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::AccessPointDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::CreateAccessPoint - Arguments for method CreateAccessPoint on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessPoint on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method CreateAccessPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessPoint.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    my $AccessPointDescription = $elasticfilesystem->CreateAccessPoint(
      ClientToken  => 'MyClientToken',
      FileSystemId => 'MyFileSystemId',
      PosixUser    => {
        Gid           => 1,    # max: 4294967295
        Uid           => 1,    # max: 4294967295
        SecondaryGids => [
          1, ...               # max: 4294967295
        ],                     # max: 16; OPTIONAL
      },    # OPTIONAL
      RootDirectory => {
        CreationInfo => {
          OwnerGid    => 1,                 # max: 4294967295
          OwnerUid    => 1,                 # max: 4294967295
          Permissions => 'MyPermissions',

        },    # OPTIONAL
        Path => 'MyPath',    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $AccessPointArn = $AccessPointDescription->AccessPointArn;
    my $AccessPointId  = $AccessPointDescription->AccessPointId;
    my $ClientToken    = $AccessPointDescription->ClientToken;
    my $FileSystemId   = $AccessPointDescription->FileSystemId;
    my $LifeCycleState = $AccessPointDescription->LifeCycleState;
    my $Name           = $AccessPointDescription->Name;
    my $OwnerId        = $AccessPointDescription->OwnerId;
    my $PosixUser      = $AccessPointDescription->PosixUser;
    my $RootDirectory  = $AccessPointDescription->RootDirectory;
    my $Tags           = $AccessPointDescription->Tags;

    # Returns a L<Paws::EFS::AccessPointDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/CreateAccessPoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A string of up to 64 ASCII characters that Amazon EFS uses to ensure
idempotent creation.



=head2 B<REQUIRED> FileSystemId => Str

The ID of the EFS file system that the access point provides access to.



=head2 PosixUser => L<Paws::EFS::PosixUser>

The operating system user and group applied to all file system requests
made using the access point.



=head2 RootDirectory => L<Paws::EFS::RootDirectory>

Specifies the directory on the Amazon EFS file system that the access
point exposes as the root directory of your file system to NFS clients
using the access point. The clients using the access point can only
access the root directory and below. If the C<RootDirectory> E<gt>
C<Path> specified does not exist, EFS creates it and applies the
C<CreationInfo> settings when a client connects to an access point.
When specifying a C<RootDirectory>, you need to provide the C<Path>,
and the C<CreationInfo> is optional.



=head2 Tags => ArrayRef[L<Paws::EFS::Tag>]

Creates tags associated with the access point. Each tag is a key-value
pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessPoint in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

