package Paws::Greengrass::GroupCertificateConfiguration;
  use Moose;
  has CertificateAuthorityExpiryInMilliseconds => (is => 'ro', isa => 'Str');
  has CertificateExpiryInMilliseconds => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GroupCertificateConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::GroupCertificateConfiguration object:

  $service_obj->Method(Att1 => { CertificateAuthorityExpiryInMilliseconds => $value, ..., GroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::GroupCertificateConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateAuthorityExpiryInMilliseconds

=head1 DESCRIPTION

Information about a group certificate configuration.

=head1 ATTRIBUTES


=head2 CertificateAuthorityExpiryInMilliseconds => Str

  The amount of time remaining before the certificate authority expires,
in milliseconds.


=head2 CertificateExpiryInMilliseconds => Str

  The amount of time remaining before the certificate expires, in
milliseconds.


=head2 GroupId => Str

  The ID of the group certificate configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

