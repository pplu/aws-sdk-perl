# Generated from json/callresult_class.tt

package Paws::ACM::DescribeCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ACM::Types qw/ACM_CertificateDetail/;
  has Certificate => (is => 'ro', isa => ACM_CertificateDetail);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Certificate' => {
                                  'class' => 'Paws::ACM::CertificateDetail',
                                  'type' => 'ACM_CertificateDetail'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ACM::DescribeCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => ACM_CertificateDetail

Metadata about an ACM certificate.


=head2 _request_id => Str


=cut

1;