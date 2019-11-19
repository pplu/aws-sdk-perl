# Generated from json/callargs_class.tt

package Paws::ACM::UpdateCertificateOptions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ACM::Types qw/ACM_CertificateOptions/;
  has CertificateArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Options => (is => 'ro', isa => ACM_CertificateOptions, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateCertificateOptions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CertificateArn' => 1,
                    'Options' => 1
                  },
  'types' => {
               'Options' => {
                              'type' => 'ACM_CertificateOptions',
                              'class' => 'Paws::ACM::CertificateOptions'
                            },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::UpdateCertificateOptions - Arguments for method UpdateCertificateOptions on L<Paws::ACM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCertificateOptions on the
L<AWS Certificate Manager|Paws::ACM> service. Use the attributes of this class
as arguments to method UpdateCertificateOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCertificateOptions.

=head1 SYNOPSIS

    my $acm = Paws->service('ACM');
    $acm->UpdateCertificateOptions(
      CertificateArn => 'MyArn',
      Options        => {
        CertificateTransparencyLoggingPreference =>
          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm/UpdateCertificateOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateArn => Str

ARN of the requested certificate to update. This must be of the form:

C<arn:aws:acm:us-east-1:I<account>:certificate/I<12345678-1234-1234-1234-123456789012>>



=head2 B<REQUIRED> Options => ACM_CertificateOptions

Use to update the options for your certificate. Currently, you can
specify whether to add your certificate to a transparency log.
Certificate transparency makes it possible to detect SSL/TLS
certificates that have been mistakenly or maliciously issued.
Certificates that have not been logged typically produce an error
message in a browser.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCertificateOptions in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

