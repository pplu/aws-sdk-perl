# Generated from json/callresult_class.tt

package Paws::DMS::DescribeCertificatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_Certificate/;
  has Certificates => (is => 'ro', isa => ArrayRef[DMS_Certificate]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Certificates' => {
                                   'class' => 'Paws::DMS::Certificate',
                                   'type' => 'ArrayRef[DMS_Certificate]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeCertificatesResponse

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[DMS_Certificate]

The Secure Sockets Layer (SSL) certificates associated with the
replication instance.


=head2 Marker => Str

The pagination token.


=head2 _request_id => Str


=cut

1;