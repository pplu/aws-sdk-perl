# Generated from callresult_class.tt

package Paws::IAM::UploadSigningCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_SigningCertificate/;
  has Certificate => (is => 'ro', isa => IAM_SigningCertificate, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Certificate' => {
                                  'class' => 'Paws::IAM::SigningCertificate',
                                  'type' => 'IAM_SigningCertificate'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Certificate' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UploadSigningCertificateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Certificate => IAM_SigningCertificate

Information about the certificate.


=head2 _request_id => Str


=cut

