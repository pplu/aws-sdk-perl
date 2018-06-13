
package Paws::IoT::UpdateCertificate;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'certificateId', required => 1);
  has NewStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'newStatus', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificates/{certificateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateCertificate - Arguments for method UpdateCertificate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCertificate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCertificate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->UpdateCertificate(
      CertificateId => 'MyCertificateId',
      NewStatus     => 'ACTIVE',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

The ID of the certificate. (The last part of the certificate ARN
contains the certificate ID.)



=head2 B<REQUIRED> NewStatus => Str

The new status.

B<Note:> Setting the status to PENDING_TRANSFER will result in an
exception being thrown. PENDING_TRANSFER is a status used internally by
AWS IoT. It is not intended for developer use.

B<Note:> The status value REGISTER_INACTIVE is deprecated and should
not be used.

Valid values are: C<"ACTIVE">, C<"INACTIVE">, C<"REVOKED">, C<"PENDING_TRANSFER">, C<"REGISTER_INACTIVE">, C<"PENDING_ACTIVATION">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

