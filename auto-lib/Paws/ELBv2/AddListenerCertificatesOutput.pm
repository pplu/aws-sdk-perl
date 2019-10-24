# Generated from callresult_class.tt

package Paws::ELBv2::AddListenerCertificatesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_Certificate/;
  has Certificates => (is => 'ro', isa => ArrayRef[ELBv2_Certificate]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Certificates' => {
                                   'class' => 'Paws::ELBv2::Certificate',
                                   'type' => 'ArrayRef[ELBv2_Certificate]'
                                 },
               '_request_id' => {
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

Paws::ELBv2::AddListenerCertificatesOutput

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[ELBv2_Certificate]

Information about the certificates in the certificate list.


=head2 _request_id => Str


=cut

