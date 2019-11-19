
package Paws::IoT::ListCertificatesByCAResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_Certificate/;
  has Certificates => (is => 'ro', isa => ArrayRef[IoT_Certificate]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Certificates' => {
                                   'class' => 'Paws::IoT::Certificate',
                                   'type' => 'ArrayRef[IoT_Certificate]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextMarker' => 'nextMarker',
                       'Certificates' => 'certificates'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCertificatesByCAResponse

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[IoT_Certificate]

The device certificates signed by the specified CA certificate.


=head2 NextMarker => Str

The marker for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

