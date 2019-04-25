package Paws::AppStream::DomainJoinInfo;
  use Moose;
  has DirectoryName => (is => 'ro', isa => 'Str');
  has OrganizationalUnitDistinguishedName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DomainJoinInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::DomainJoinInfo object:

  $service_obj->Method(Att1 => { DirectoryName => $value, ..., OrganizationalUnitDistinguishedName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::DomainJoinInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->DirectoryName

=head1 DESCRIPTION

Describes the configuration information required to join fleets and
image builders to Microsoft Active Directory domains.

=head1 ATTRIBUTES


=head2 DirectoryName => Str

  The fully qualified name of the directory (for example,
corp.example.com).


=head2 OrganizationalUnitDistinguishedName => Str

  The distinguished name of the organizational unit for computer
accounts.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

