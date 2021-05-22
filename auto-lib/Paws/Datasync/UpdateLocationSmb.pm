
package Paws::Datasync::UpdateLocationSmb;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Domain => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has MountOptions => (is => 'ro', isa => 'Paws::Datasync::SmbMountOptions');
  has Password => (is => 'ro', isa => 'Str');
  has Subdirectory => (is => 'ro', isa => 'Str');
  has User => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationSmb');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationSmbResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationSmb - Arguments for method UpdateLocationSmb on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationSmb on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationSmb.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationSmb.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationSmbResponse = $datasync->UpdateLocationSmb(
      LocationArn => 'MyLocationArn',
      AgentArns   => [
        'MyAgentArn', ...    # max: 128
      ],                     # OPTIONAL
      Domain       => 'MySmbDomain',    # OPTIONAL
      MountOptions => {
        Version => 'AUTOMATIC',    # values: AUTOMATIC, SMB2, SMB3; OPTIONAL
      },    # OPTIONAL
      Password     => 'MySmbPassword',        # OPTIONAL
      Subdirectory => 'MySmbSubdirectory',    # OPTIONAL
      User         => 'MySmbUser',            # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationSmb>

=head1 ATTRIBUTES


=head2 AgentArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of agents to use for a Simple Message
Block (SMB) location.



=head2 Domain => Str

The name of the Windows domain that the SMB server belongs to.



=head2 B<REQUIRED> LocationArn => Str

The Amazon Resource Name (ARN) of the SMB location to update.



=head2 MountOptions => L<Paws::Datasync::SmbMountOptions>





=head2 Password => Str

The password of the user who can mount the share has the permissions to
access files and folders in the SMB share.



=head2 Subdirectory => Str

The subdirectory in the SMB file system that is used to read data from
the SMB source location or write data to the SMB destination. The SMB
path should be a path that's exported by the SMB server, or a
subdirectory of that path. The path should be such that it can be
mounted by other SMB clients in your network.

C<Subdirectory> must be specified with forward slashes. For example,
C</path/to/folder>.

To transfer all the data in the folder that you specified, DataSync
must have permissions to mount the SMB share and to access all the data
in that share. To ensure this, do either of the following:

=over

=item *

Ensure that the user/password specified belongs to the user who can
mount the share and who has the appropriate permissions for all of the
files and directories that you want DataSync to access.

=item *

Use credentials of a member of the Backup Operators group to mount the
share.

=back

Doing either of these options enables the agent to access the data. For
the agent to access directories, you must also enable all execute
access.



=head2 User => Str

The user who can mount the share has the permissions to access files
and folders in the SMB share.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationSmb in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

