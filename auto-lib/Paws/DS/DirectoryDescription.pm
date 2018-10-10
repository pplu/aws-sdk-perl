package Paws::DS::DirectoryDescription;
  use Moose;
  has AccessUrl => (is => 'ro', isa => 'Str');
  has Alias => (is => 'ro', isa => 'Str');
  has ConnectSettings => (is => 'ro', isa => 'Paws::DS::DirectoryConnectSettingsDescription');
  has Description => (is => 'ro', isa => 'Str');
  has DesiredNumberOfDomainControllers => (is => 'ro', isa => 'Int');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has DnsIpAddrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Edition => (is => 'ro', isa => 'Str');
  has LaunchTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerDirectoryDescription => (is => 'ro', isa => 'Paws::DS::OwnerDirectoryDescription');
  has RadiusSettings => (is => 'ro', isa => 'Paws::DS::RadiusSettings');
  has RadiusStatus => (is => 'ro', isa => 'Str');
  has ShareMethod => (is => 'ro', isa => 'Str');
  has ShareNotes => (is => 'ro', isa => 'Str');
  has ShareStatus => (is => 'ro', isa => 'Str');
  has ShortName => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Str');
  has SsoEnabled => (is => 'ro', isa => 'Bool');
  has Stage => (is => 'ro', isa => 'Str');
  has StageLastUpdatedDateTime => (is => 'ro', isa => 'Str');
  has StageReason => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has VpcSettings => (is => 'ro', isa => 'Paws::DS::DirectoryVpcSettingsDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DirectoryDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::DirectoryDescription object:

  $service_obj->Method(Att1 => { AccessUrl => $value, ..., VpcSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::DirectoryDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessUrl

=head1 DESCRIPTION

Contains information about an AWS Directory Service directory.

=head1 ATTRIBUTES


=head2 AccessUrl => Str

  The access URL for the directory, such as
C<http://E<lt>aliasE<gt>.awsapps.com>. If no alias has been created for
the directory, C<E<lt>aliasE<gt>> is the directory identifier, such as
C<d-XXXXXXXXXX>.


=head2 Alias => Str

  The alias for the directory. If no alias has been created for the
directory, the alias is the directory identifier, such as
C<d-XXXXXXXXXX>.


=head2 ConnectSettings => L<Paws::DS::DirectoryConnectSettingsDescription>

  A DirectoryConnectSettingsDescription object that contains additional
information about an AD Connector directory. This member is only
present if the directory is an AD Connector directory.


=head2 Description => Str

  The textual description for the directory.


=head2 DesiredNumberOfDomainControllers => Int

  The desired number of domain controllers in the directory if the
directory is Microsoft AD.


=head2 DirectoryId => Str

  The directory identifier.


=head2 DnsIpAddrs => ArrayRef[Str|Undef]

  The IP addresses of the DNS servers for the directory. For a Simple AD
or Microsoft AD directory, these are the IP addresses of the Simple AD
or Microsoft AD directory servers. For an AD Connector directory, these
are the IP addresses of the DNS servers or domain controllers in the
on-premises directory to which the AD Connector is connected.


=head2 Edition => Str

  The edition associated with this directory.


=head2 LaunchTime => Str

  Specifies when the directory was created.


=head2 Name => Str

  The fully qualified name of the directory.


=head2 OwnerDirectoryDescription => L<Paws::DS::OwnerDirectoryDescription>

  Describes the AWS Managed Microsoft AD directory in the directory owner
account.


=head2 RadiusSettings => L<Paws::DS::RadiusSettings>

  A RadiusSettings object that contains information about the RADIUS
server configured for this directory.


=head2 RadiusStatus => Str

  The status of the RADIUS MFA server connection.


=head2 ShareMethod => Str

  The method used when sharing a directory to determine whether the
directory should be shared within your AWS organization
(C<ORGANIZATIONS>) or with any AWS account by sending a shared
directory request (C<HANDSHAKE>).


=head2 ShareNotes => Str

  A directory share request that is sent by the directory owner to the
directory consumer. The request includes a typed message to help the
directory consumer administrator determine whether to approve or reject
the share invitation.


=head2 ShareStatus => Str

  Current directory status of the shared AWS Managed Microsoft AD
directory.


=head2 ShortName => Str

  The short name of the directory.


=head2 Size => Str

  The directory size.


=head2 SsoEnabled => Bool

  Indicates if single sign-on is enabled for the directory. For more
information, see EnableSso and DisableSso.


=head2 Stage => Str

  The current stage of the directory.


=head2 StageLastUpdatedDateTime => Str

  The date and time that the stage was last updated.


=head2 StageReason => Str

  Additional information about the directory stage.


=head2 Type => Str

  The directory size.


=head2 VpcSettings => L<Paws::DS::DirectoryVpcSettingsDescription>

  A DirectoryVpcSettingsDescription object that contains additional
information about a directory. This member is only present if the
directory is a Simple AD or Managed AD directory.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

