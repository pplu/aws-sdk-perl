# Generated from json/callresult_class.tt

package Paws::ACM::RequestCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ACM::Types qw//;
  has CertificateArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ACM::RequestCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

String that contains the ARN of the issued certificate. This must be of
the form:

C<arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012>


=head2 _request_id => Str


=cut

1;