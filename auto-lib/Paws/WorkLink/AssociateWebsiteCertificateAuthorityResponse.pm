
package Paws::WorkLink::AssociateWebsiteCertificateAuthorityResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkLink::Types qw//;
  has WebsiteCaId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'WebsiteCaId' => {
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

Paws::WorkLink::AssociateWebsiteCertificateAuthorityResponse

=head1 ATTRIBUTES


=head2 WebsiteCaId => Str

A unique identifier for the CA.


=head2 _request_id => Str


=cut

