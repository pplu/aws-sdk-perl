# Generated from callresult_class.tt

package Paws::RedShift::HsmClientCertificateMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_HsmClientCertificate/;
  has HsmClientCertificates => (is => 'ro', isa => ArrayRef[RedShift_HsmClientCertificate]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'HsmClientCertificates' => 'HsmClientCertificate'
                     },
  'types' => {
               'HsmClientCertificates' => {
                                            'class' => 'Paws::RedShift::HsmClientCertificate',
                                            'type' => 'ArrayRef[RedShift_HsmClientCertificate]'
                                          },
               'Marker' => {
                             'type' => 'Str'
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

Paws::RedShift::HsmClientCertificateMessage

=head1 ATTRIBUTES


=head2 HsmClientCertificates => ArrayRef[RedShift_HsmClientCertificate]

A list of the identifiers for one or more HSM client certificates used
by Amazon Redshift clusters to store and retrieve database encryption
keys in an HSM.


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 _request_id => Str


=cut

