
package Paws::Lightsail::GetCertificates;
  use Moose;
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName' );
  has CertificateStatuses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'certificateStatuses' );
  has IncludeCertificateDetails => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeCertificateDetails' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCertificates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetCertificatesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetCertificates - Arguments for method GetCertificates on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCertificates on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetCertificates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCertificates.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetCertificatesResult = $lightsail->GetCertificates(
      CertificateName     => 'MyCertificateName',    # OPTIONAL
      CertificateStatuses => [
        'PENDING_VALIDATION',
        ... # values: PENDING_VALIDATION, ISSUED, INACTIVE, EXPIRED, VALIDATION_TIMED_OUT, REVOKED, FAILED
      ],    # OPTIONAL
      IncludeCertificateDetails => 1,    # OPTIONAL
    );

    # Results:
    my $Certificates = $GetCertificatesResult->Certificates;

    # Returns a L<Paws::Lightsail::GetCertificatesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetCertificates>

=head1 ATTRIBUTES


=head2 CertificateName => Str

The name for the certificate for which to return information.

When omitted, the response includes all of your certificates in the AWS
Region where the request is made.



=head2 CertificateStatuses => ArrayRef[Str|Undef]

The status of the certificates for which to return information.

For example, specify C<ISSUED> to return only certificates with an
C<ISSUED> status.

When omitted, the response includes all of your certificates in the AWS
Region where the request is made, regardless of their current status.



=head2 IncludeCertificateDetails => Bool

Indicates whether to include detailed information about the
certificates in the response.

When omitted, the response includes only the certificate names, Amazon
Resource Names (ARNs), domain names, and tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCertificates in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

