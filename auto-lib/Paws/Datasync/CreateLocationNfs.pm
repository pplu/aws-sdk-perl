
package Paws::Datasync::CreateLocationNfs;
  use Moose;
  has OnPremConfig => (is => 'ro', isa => 'Paws::Datasync::OnPremConfig', required => 1);
  has ServerHostname => (is => 'ro', isa => 'Str', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationNfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationNfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationNfs - Arguments for method CreateLocationNfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationNfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationNfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationNfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationNfsResponse = $datasync->CreateLocationNfs(
      OnPremConfig => {
        AgentArns => [
          'MyAgentArn', ...    # max: 128
        ],                     # min: 1, max: 64

      },
      ServerHostname => 'MyServerHostname',
      Subdirectory   => 'MySubdirectory',
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256; OPTIONAL
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationNfsResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationNfsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationNfs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OnPremConfig => L<Paws::Datasync::OnPremConfig>

Contains a list of Amazon Resource Names (ARNs) of agents that are used
to connect to an NFS server.



=head2 B<REQUIRED> ServerHostname => Str

The name of the NFS server. This value is the IP address or Domain Name
Service (DNS) name of the NFS server. An agent that is installed
on-premises uses this host name to mount the NFS server in a network.

This name must either be DNS-compliant or must be an IP version 4
(IPv4) address.



=head2 B<REQUIRED> Subdirectory => Str

The subdirectory in the NFS file system that is used to read data from
the NFS source location or write data to the NFS destination. The NFS
path should be a path that's exported by the NFS server, or a
subdirectory of that path. The path should be such that it can be
mounted by other NFS clients in your network.

To see all the paths exported by your NFS server. run "C<showmount -e
nfs-server-name>" from an NFS client that has access to your server.
You can specify any directory that appears in the results, and any
subdirectory of that directory. Ensure that the NFS export is
accessible without Kerberos authentication.

To transfer all the data in the folder you specified, DataSync needs to
have permissions to read all the data. To ensure this, either configure
the NFS export with C<no_root_squash,> or ensure that the permissions
for all of the files that you want sync allow read access for all
users. Doing either enables the agent to read the files. For the agent
to access directories, you must additionally enable all execute access.
For information about NFS export configuration, see 18.7. The
/etc/exports Configuration File
(https://www.centos.org/docs/5/html/Deployment_Guide-en-US/s1-nfs-server-config-exports.html)
in the Centos documentation.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The key-value pair that represents the tag that you want to add to the
location. The value can be an empty string. We recommend using tags to
name your resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationNfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

