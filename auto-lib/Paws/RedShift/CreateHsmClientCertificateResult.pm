# Generated from callresult_class.tt

package Paws::RedShift::CreateHsmClientCertificateResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_HsmClientCertificate/;
  has HsmClientCertificate => (is => 'ro', isa => RedShift_HsmClientCertificate);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HsmClientCertificate' => {
                                           'class' => 'Paws::RedShift::HsmClientCertificate',
                                           'type' => 'RedShift_HsmClientCertificate'
                                         }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateHsmClientCertificateResult

=head1 ATTRIBUTES


=head2 HsmClientCertificate => RedShift_HsmClientCertificate




=head2 _request_id => Str


=cut

