# Generated from json/callargs_class.tt

package Paws::ACMPCA::TagCertificateAuthority;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ACMPCA::Types qw/ACMPCA_Tag/;
  has CertificateAuthorityArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[ACMPCA_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagCertificateAuthority');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::ACMPCA::Tag',
                           'type' => 'ArrayRef[ACMPCA_Tag]'
                         },
               'CertificateAuthorityArn' => {
                                              'type' => 'Str'
                                            }
             },
  'IsRequired' => {
                    'CertificateAuthorityArn' => 1,
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::TagCertificateAuthority - Arguments for method TagCertificateAuthority on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagCertificateAuthority on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method TagCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagCertificateAuthority.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    $acm -pca->TagCertificateAuthority(
      CertificateAuthorityArn => 'MyArn',
      Tags                    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/TagCertificateAuthority>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateCertificateAuthority. This must be of the form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>>



=head2 B<REQUIRED> Tags => ArrayRef[ACMPCA_Tag]

List of tags to be associated with the CA.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagCertificateAuthority in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

