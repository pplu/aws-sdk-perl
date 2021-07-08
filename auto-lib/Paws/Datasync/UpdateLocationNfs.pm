
package Paws::Datasync::UpdateLocationNfs;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has MountOptions => (is => 'ro', isa => 'Paws::Datasync::NfsMountOptions');
  has OnPremConfig => (is => 'ro', isa => 'Paws::Datasync::OnPremConfig');
  has Subdirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationNfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationNfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationNfs - Arguments for method UpdateLocationNfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationNfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationNfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationNfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationNfsResponse = $datasync->UpdateLocationNfs(
      LocationArn  => 'MyLocationArn',
      MountOptions => {
        Version =>
          'AUTOMATIC',    # values: AUTOMATIC, NFS3, NFS4_0, NFS4_1; OPTIONAL
      },    # OPTIONAL
      OnPremConfig => {
        AgentArns => [
          'MyAgentArn', ...    # max: 128
        ],    # min: 1, max: 4

      },    # OPTIONAL
      Subdirectory => 'MyNfsSubdirectory',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationNfs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

The Amazon Resource Name (ARN) of the NFS location to update.



=head2 MountOptions => L<Paws::Datasync::NfsMountOptions>





=head2 OnPremConfig => L<Paws::Datasync::OnPremConfig>





=head2 Subdirectory => Str

The subdirectory in the NFS file system that is used to read data from
the NFS source location or write data to the NFS destination. The NFS
path should be a path that's exported by the NFS server, or a
subdirectory of that path. The path should be such that it can be
mounted by other NFS clients in your network.

To see all the paths exported by your NFS server, run "C<showmount -e
nfs-server-name>" from an NFS client that has access to your server.
You can specify any directory that appears in the results, and any
subdirectory of that directory. Ensure that the NFS export is
accessible without Kerberos authentication.

To transfer all the data in the folder that you specified, DataSync
must have permissions to read all the data. To ensure this, either
configure the NFS export with C<no_root_squash>, or ensure that the
files you want DataSync to access have permissions that allow read
access for all users. Doing either option enables the agent to read the
files. For the agent to access directories, you must additionally
enable all execute access.

If you are copying data to or from your AWS Snowcone device, see NFS
Server on AWS Snowcone
(https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone)
for more information.

For information about NFS export configuration, see 18.7. The
/etc/exports Configuration File in the Red Hat Enterprise Linux
documentation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationNfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

