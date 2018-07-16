
package Paws::IoT::UpdateCACertificate;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caCertificateId', required => 1);
  has NewAutoRegistrationStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'newAutoRegistrationStatus');
  has NewStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'newStatus');
  has RegistrationConfig => (is => 'ro', isa => 'Paws::IoT::RegistrationConfig', traits => ['NameInRequest'], request_name => 'registrationConfig');
  has RemoveAutoRegistration => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'removeAutoRegistration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCACertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cacertificate/{caCertificateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateCACertificate - Arguments for method UpdateCACertificate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCACertificate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateCACertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCACertificate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->UpdateCACertificate(
      CertificateId             => 'MyCertificateId',
      NewAutoRegistrationStatus => 'ENABLE',            # OPTIONAL
      NewStatus                 => 'ACTIVE',            # OPTIONAL
      RegistrationConfig        => {
        RoleArn      => 'MyRoleArn',         # min: 20, max: 2048; OPTIONAL
        TemplateBody => 'MyTemplateBody',    # OPTIONAL
      },    # OPTIONAL
      RemoveAutoRegistration => 1,    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateCACertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

The CA certificate identifier.



=head2 NewAutoRegistrationStatus => Str

The new value for the auto registration status. Valid values are:
"ENABLE" or "DISABLE".

Valid values are: C<"ENABLE">, C<"DISABLE">

=head2 NewStatus => Str

The updated status of the CA certificate.

B<Note:> The status value REGISTER_INACTIVE is deprecated and should
not be used.

Valid values are: C<"ACTIVE">, C<"INACTIVE">

=head2 RegistrationConfig => L<Paws::IoT::RegistrationConfig>

Information about the registration configuration.



=head2 RemoveAutoRegistration => Bool

If true, remove auto registration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCACertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

