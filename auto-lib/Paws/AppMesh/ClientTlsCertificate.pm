# Generated by default/object.tt
package Paws::AppMesh::ClientTlsCertificate;
  use Moose;
  has File => (is => 'ro', isa => 'Paws::AppMesh::ListenerTlsFileCertificate', request_name => 'file', traits => ['NameInRequest']);
  has Sds => (is => 'ro', isa => 'Paws::AppMesh::ListenerTlsSdsCertificate', request_name => 'sds', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ClientTlsCertificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::ClientTlsCertificate object:

  $service_obj->Method(Att1 => { File => $value, ..., Sds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::ClientTlsCertificate object:

  $result = $service_obj->Method(...);
  $result->Att1->File

=head1 DESCRIPTION

An object that represents the client's certificate.

=head1 ATTRIBUTES


=head2 File => L<Paws::AppMesh::ListenerTlsFileCertificate>

An object that represents a local file certificate. The certificate
must meet specific requirements and you must have proxy authorization
enabled. For more information, see Transport Layer Security (TLS)
(https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html).


=head2 Sds => L<Paws::AppMesh::ListenerTlsSdsCertificate>

A reference to an object that represents a client's TLS Secret
Discovery Service certificate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

