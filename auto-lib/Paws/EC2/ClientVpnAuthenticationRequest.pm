package Paws::EC2::ClientVpnAuthenticationRequest;
  use Moose;
  has ActiveDirectory => (is => 'ro', isa => 'Paws::EC2::DirectoryServiceAuthenticationRequest');
  has MutualAuthentication => (is => 'ro', isa => 'Paws::EC2::CertificateAuthenticationRequest');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ClientVpnAuthenticationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ClientVpnAuthenticationRequest object:

  $service_obj->Method(Att1 => { ActiveDirectory => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ClientVpnAuthenticationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveDirectory

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ActiveDirectory => L<Paws::EC2::DirectoryServiceAuthenticationRequest>

  Information about the Active Directory to be used, if applicable. You
must provide this information if B<Type> is
C<directory-service-authentication>.


=head2 MutualAuthentication => L<Paws::EC2::CertificateAuthenticationRequest>

  Information about the authentication certificates to be used, if
applicable. You must provide this information if B<Type> is
C<certificate-authentication>.


=head2 Type => Str

  The type of client authentication to be used. Specify
C<certificate-authentication> to use certificate-based authentication,
or C<directory-service-authentication> to use Active Directory
authentication.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
