# Generated from json/callargs_class.tt

package Paws::DMS::ImportCertificate;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_Tag/;
  has CertificateIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CertificatePem => (is => 'ro', isa => Str, predicate => 1);
  has CertificateWallet => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DMS_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ImportCertificate');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DMS::ImportCertificateResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CertificateIdentifier' => {
                                            'type' => 'Str'
                                          },
               'CertificateWallet' => {
                                        'type' => 'Str'
                                      },
               'Tags' => {
                           'class' => 'Paws::DMS::Tag',
                           'type' => 'ArrayRef[DMS_Tag]'
                         },
               'CertificatePem' => {
                                     'type' => 'Str'
                                   }
             },
  'IsRequired' => {
                    'CertificateIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ImportCertificate - Arguments for method ImportCertificate on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportCertificate on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ImportCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportCertificate.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $ImportCertificateResponse = $dms->ImportCertificate(
      CertificateIdentifier => 'MyString',
      CertificatePem        => 'MyString',                 # OPTIONAL
      CertificateWallet     => 'BlobCertificateWallet',    # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                   # OPTIONAL
    );

    # Results:
    my $Certificate = $ImportCertificateResponse->Certificate;

    # Returns a L<Paws::DMS::ImportCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ImportCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateIdentifier => Str

The customer-assigned name of the certificate. Valid characters are A-z
and 0-9.



=head2 CertificatePem => Str

The contents of the .pem X.509 certificate file for the certificate.



=head2 CertificateWallet => Str

The location of the imported Oracle Wallet certificate for use with
SSL.



=head2 Tags => ArrayRef[DMS_Tag]

The tags associated with the certificate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportCertificate in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

