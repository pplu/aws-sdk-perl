
package Paws::ApiGateway::CreateDomainName;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn');
  has CertificateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateBody');
  has CertificateChain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateChain');
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName');
  has CertificatePrivateKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificatePrivateKey');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomainName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainnames');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::DomainName');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateDomainName - Arguments for method CreateDomainName on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomainName on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method CreateDomainName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomainName.

As an example:

  $service_obj->CreateDomainName(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The reference to an AWS-managed certificate. AWS Certificate Manager is
the only supported source.



=head2 CertificateBody => Str

[Deprecated] The body of the server certificate provided by your
certificate authority.



=head2 CertificateChain => Str

[Deprecated] The intermediate certificates and optionally the root
certificate, one after the other without any blank lines. If you
include the root certificate, your certificate chain must start with
intermediate certificates and end with the root certificate. Use the
intermediate certificates that were provided by your certificate
authority. Do not include any intermediaries that are not in the chain
of trust path.



=head2 CertificateName => Str

The user-friendly name of the certificate.



=head2 CertificatePrivateKey => Str

[Deprecated] Your certificate's private key.



=head2 B<REQUIRED> DomainName => Str

(Required) The name of the DomainName resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomainName in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

