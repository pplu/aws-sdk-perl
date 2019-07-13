package Paws::FSX::SelfManagedActiveDirectoryConfiguration;
  use Moose;
  has DnsIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has FileSystemAdministratorsGroup => (is => 'ro', isa => 'Str');
  has OrganizationalUnitDistinguishedName => (is => 'ro', isa => 'Str');
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::SelfManagedActiveDirectoryConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::SelfManagedActiveDirectoryConfiguration object:

  $service_obj->Method(Att1 => { DnsIps => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::SelfManagedActiveDirectoryConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DnsIps

=head1 DESCRIPTION

The configuration that Amazon FSx uses to join the Windows File Server
instance to your self-managed (including on-premises) Microsoft Active
Directory (AD) directory.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DnsIps => ArrayRef[Str|Undef]

  A list of up to two IP addresses of DNS servers or domain controllers
in the self-managed AD directory. The IP addresses need to be either in
the same VPC CIDR range as the one in which your Amazon FSx file system
is being created, or in the private IP version 4 (Iv4) address ranges,
as specified in RFC 1918 (http://www.faqs.org/rfcs/rfc1918.html):

=over

=item *

10.0.0.0 - 10.255.255.255 (10/8 prefix)

=item *

172.16.0.0 - 172.31.255.255 (172.16/12 prefix)

=item *

192.168.0.0 - 192.168.255.255 (192.168/16 prefix)

=back



=head2 B<REQUIRED> DomainName => Str

  The fully qualified domain name of the self-managed AD directory, such
as C<corp.example.com>.


=head2 FileSystemAdministratorsGroup => Str

  (Optional) The name of the domain group whose members are granted
administrative privileges for the file system. Administrative
privileges include taking ownership of files and folders, and setting
audit controls (audit ACLs) on files and folders. The group that you
specify must already exist in your domain. If you don't provide one,
your AD domain's Domain Admins group is used.


=head2 OrganizationalUnitDistinguishedName => Str

  (Optional) The fully qualified distinguished name of the organizational
unit within your self-managed AD directory that the Windows File Server
instance will join. Amazon FSx only accepts OU as the direct parent of
the file system. An example is C<OU=FSx,DC=yourdomain,DC=corp,DC=com>.
To learn more, see RFC 2253 (https://tools.ietf.org/html/rfc2253). If
none is provided, the FSx file system is created in the default
location of your self-managed AD directory.

Only Organizational Unit (OU) objects can be the direct parent of the
file system that you're creating.


=head2 B<REQUIRED> Password => Str

  The password for the service account on your self-managed AD domain
that Amazon FSx will use to join to your AD domain.


=head2 B<REQUIRED> UserName => Str

  The user name for the service account on your self-managed AD domain
that Amazon FSx will use to join to your AD domain. This account must
have the permission to join computers to the domain in the
organizational unit provided in C<OrganizationalUnitDistinguishedName>,
or in the default location of your AD domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

