package Paws::FSX::SelfManagedActiveDirectoryAttributes;
  use Moose;
  has DnsIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DomainName => (is => 'ro', isa => 'Str');
  has FileSystemAdministratorsGroup => (is => 'ro', isa => 'Str');
  has OrganizationalUnitDistinguishedName => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::SelfManagedActiveDirectoryAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::SelfManagedActiveDirectoryAttributes object:

  $service_obj->Method(Att1 => { DnsIps => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::SelfManagedActiveDirectoryAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->DnsIps

=head1 DESCRIPTION

The configuration of the self-managed Microsoft Active Directory (AD)
directory to which the Windows File Server instance is joined.

=head1 ATTRIBUTES


=head2 DnsIps => ArrayRef[Str|Undef]

  A list of up to two IP addresses of DNS servers or domain controllers
in the self-managed AD directory.


=head2 DomainName => Str

  The fully qualified domain name of the self-managed AD directory.


=head2 FileSystemAdministratorsGroup => Str

  The name of the domain group whose members have administrative
privileges for the FSx file system.


=head2 OrganizationalUnitDistinguishedName => Str

  The fully qualified distinguished name of the organizational unit
within the self-managed AD directory to which the Windows File Server
instance is joined.


=head2 UserName => Str

  The user name for the service account on your self-managed AD domain
that FSx uses to join to your AD domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

