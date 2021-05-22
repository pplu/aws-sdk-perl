# Generated by default/object.tt
package Paws::AppMesh::VirtualGatewayTlsValidationContextAcmTrust;
  use Moose;
  has CertificateAuthorityArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'certificateAuthorityArns', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::VirtualGatewayTlsValidationContextAcmTrust

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualGatewayTlsValidationContextAcmTrust object:

  $service_obj->Method(Att1 => { CertificateAuthorityArns => $value, ..., CertificateAuthorityArns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualGatewayTlsValidationContextAcmTrust object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateAuthorityArns

=head1 DESCRIPTION

An object that represents a Transport Layer Security (TLS) validation
context trust for an AWS Certicate Manager (ACM) certificate.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArns => ArrayRef[Str|Undef]

One or more ACM Amazon Resource Name (ARN)s.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

