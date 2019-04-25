
package Paws::EFS::CreateMountTarget;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has IpAddress => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMountTarget');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/mount-targets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::MountTargetDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::CreateMountTarget - Arguments for method CreateMountTarget on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMountTarget on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method CreateMountTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMountTarget.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    # To create a new mount target
    # This operation creates a new mount target for an EFS file system.
    my $MountTargetDescription = $elasticfilesystem->CreateMountTarget(
      {
        'FileSystemId' => 'fs-01234567',
        'SubnetId'     => 'subnet-1234abcd'
      }
    );

    # Results:
    my $FileSystemId       = $MountTargetDescription->FileSystemId;
    my $IpAddress          = $MountTargetDescription->IpAddress;
    my $LifeCycleState     = $MountTargetDescription->LifeCycleState;
    my $MountTargetId      = $MountTargetDescription->MountTargetId;
    my $NetworkInterfaceId = $MountTargetDescription->NetworkInterfaceId;
    my $OwnerId            = $MountTargetDescription->OwnerId;
    my $SubnetId           = $MountTargetDescription->SubnetId;

    # Returns a L<Paws::EFS::MountTargetDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/CreateMountTarget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

ID of the file system for which to create the mount target.



=head2 IpAddress => Str

Valid IPv4 address within the address range of the specified subnet.



=head2 SecurityGroups => ArrayRef[Str|Undef]

Up to five VPC security group IDs, of the form C<sg-xxxxxxxx>. These
must be for the same VPC as subnet specified.



=head2 B<REQUIRED> SubnetId => Str

ID of the subnet to add the mount target in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMountTarget in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

