
package Paws::IoT::TransferCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has TransferredCertificateArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TransferredCertificateArn' => 'transferredCertificateArn'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TransferredCertificateArn' => {
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

Paws::IoT::TransferCertificateResponse

=head1 ATTRIBUTES


=head2 TransferredCertificateArn => Str

The ARN of the certificate.


=head2 _request_id => Str


=cut

