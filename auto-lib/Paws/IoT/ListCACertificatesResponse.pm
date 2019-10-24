
package Paws::IoT::ListCACertificatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_CACertificate/;
  has Certificates => (is => 'ro', isa => ArrayRef[IoT_CACertificate]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Certificates' => {
                                   'class' => 'Paws::IoT::CACertificate',
                                   'type' => 'ArrayRef[IoT_CACertificate]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'Certificates' => 'certificates',
                       'NextMarker' => 'nextMarker'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCACertificatesResponse

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[IoT_CACertificate]

The CA certificates registered in your AWS account.


=head2 NextMarker => Str

The current position within the list of CA certificates.


=head2 _request_id => Str


=cut

