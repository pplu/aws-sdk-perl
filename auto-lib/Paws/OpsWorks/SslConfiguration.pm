package Paws::OpsWorks::SslConfiguration;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str', required => 1);
  has Chain => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::SslConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::SslConfiguration object:

  $service_obj->Method(Att1 => { Certificate => $value, ..., PrivateKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::SslConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Certificate

=head1 DESCRIPTION

Describes an app's SSL configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Certificate => Str

  The contents of the certificate's domain.crt file.


=head2 Chain => Str

  Optional. Can be used to specify an intermediate certificate authority
key or client authentication.


=head2 B<REQUIRED> PrivateKey => Str

  The private key; the contents of the certificate's domain.kex file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

