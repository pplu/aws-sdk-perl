
package Paws::IoT::RegisterCACertificate;
  use Moose;
  has AllowAutoRegistration => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'allowAutoRegistration');
  has CaCertificate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caCertificate', required => 1);
  has RegistrationConfig => (is => 'ro', isa => 'Paws::IoT::RegistrationConfig', traits => ['NameInRequest'], request_name => 'registrationConfig');
  has SetAsActive => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'setAsActive');
  has VerificationCertificate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'verificationCertificate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterCACertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cacertificate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::RegisterCACertificateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterCACertificate - Arguments for method RegisterCACertificate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterCACertificate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method RegisterCACertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterCACertificate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $RegisterCACertificateResponse = $iot->RegisterCACertificate(
      CaCertificate           => 'MyCertificatePem',
      VerificationCertificate => 'MyCertificatePem',
      AllowAutoRegistration   => 1,                    # OPTIONAL
      RegistrationConfig      => {
        RoleArn      => 'MyRoleArn',         # min: 20, max: 2048; OPTIONAL
        TemplateBody => 'MyTemplateBody',    # OPTIONAL
      },    # OPTIONAL
      SetAsActive => 1,    # OPTIONAL
    );

    # Results:
    my $CertificateArn = $RegisterCACertificateResponse->CertificateArn;
    my $CertificateId  = $RegisterCACertificateResponse->CertificateId;

    # Returns a L<Paws::IoT::RegisterCACertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/RegisterCACertificate>

=head1 ATTRIBUTES


=head2 AllowAutoRegistration => Bool

Allows this CA certificate to be used for auto registration of device
certificates.



=head2 B<REQUIRED> CaCertificate => Str

The CA certificate.



=head2 RegistrationConfig => L<Paws::IoT::RegistrationConfig>

Information about the registration configuration.



=head2 SetAsActive => Bool

A boolean value that specifies if the CA certificate is set to active.



=head2 B<REQUIRED> VerificationCertificate => Str

The private key verification certificate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterCACertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

