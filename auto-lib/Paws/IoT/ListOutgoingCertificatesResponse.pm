
package Paws::IoT::ListOutgoingCertificatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_OutgoingCertificate/;
  has NextMarker => (is => 'ro', isa => Str);
  has OutgoingCertificates => (is => 'ro', isa => ArrayRef[IoT_OutgoingCertificate]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OutgoingCertificates' => {
                                           'class' => 'Paws::IoT::OutgoingCertificate',
                                           'type' => 'ArrayRef[IoT_OutgoingCertificate]'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'OutgoingCertificates' => 'outgoingCertificates',
                       'NextMarker' => 'nextMarker'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListOutgoingCertificatesResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

The marker for the next set of results.


=head2 OutgoingCertificates => ArrayRef[IoT_OutgoingCertificate]

The certificates that are being transferred but not yet accepted.


=head2 _request_id => Str


=cut

