
package Paws::Datasync::CreateLocationSmb;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Domain => (is => 'ro', isa => 'Str');
  has MountOptions => (is => 'ro', isa => 'Paws::Datasync::SmbMountOptions');
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has ServerHostname => (is => 'ro', isa => 'Str', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');
  has User => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationSmb');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationSmbResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationSmb - Arguments for method CreateLocationSmb on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationSmb on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationSmb.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationSmb.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationSmbResponse = $datasync->CreateLocationSmb(
      AgentArns => [
        'MyAgentArn', ...    # max: 128
      ],
      Password       => 'MySmbPassword',
      ServerHostname => 'MyServerHostname',
      Subdirectory   => 'MyNonEmptySubdirectory',
      User           => 'MySmbUser',
      Domain         => 'MySmbDomain',              # OPTIONAL
      MountOptions   => {
        Version => 'AUTOMATIC',    # values: AUTOMATIC, SMB2, SMB3; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationSmbResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationSmbResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationSmb>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of agents to use for a Simple Message
Block (SMB) location.



=head2 Domain => Str

The name of the Windows domain that the SMB server belongs to.



=head2 MountOptions => L<Paws::Datasync::SmbMountOptions>

The mount options used by DataSync to access the SMB server.



=head2 B<REQUIRED> Password => Str

The password of the user who can mount the share, has the permissions
to access files and folders in the SMB share.



=head2 B<REQUIRED> ServerHostname => Str

The name of the SMB server. This value is the IP address or Domain Name
Service (DNS) name of the SMB server. An agent that is installed
on-premises uses this hostname to mount the SMB server in a network.

This name must either be DNS-compliant or must be an IP version 4
(IPv4) address.



=head2 B<REQUIRED> Subdirectory => Str

The subdirectory in the SMB file system that is used to read data from
the SMB source location or write data to the SMB destination. The SMB
path should be a path that's exported by the SMB server, or a
subdirectory of that path. The path should be such that it can be
mounted by other SMB clients in your network.

C<Subdirectory> must be specified with forward slashes. For example
C</path/to/folder>.

To transfer all the data in the folder you specified, DataSync needs to
have permissions to mount the SMB share, as well as to access all the
data in that share. To ensure this, either ensure that the
user/password specified belongs to the user who can mount the share,
and who has the appropriate permissions for all of the files and
directories that you want DataSync to access, or use credentials of a
member of the Backup Operators group to mount the share. Doing either
enables the agent to access the data. For the agent to access
directories, you must additionally enable all execute access.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The key-value pair that represents the tag that you want to add to the
location. The value can be an empty string. We recommend using tags to
name your resources.



=head2 B<REQUIRED> User => Str

The user who can mount the share, has the permissions to access files
and folders in the SMB share.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationSmb in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

