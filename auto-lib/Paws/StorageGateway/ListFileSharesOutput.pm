# Generated from json/callresult_class.tt

package Paws::StorageGateway::ListFileSharesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_FileShareInfo/;
  has FileShareInfoList => (is => 'ro', isa => ArrayRef[StorageGateway_FileShareInfo]);
  has Marker => (is => 'ro', isa => Str);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FileShareInfoList' => {
                                        'class' => 'Paws::StorageGateway::FileShareInfo',
                                        'type' => 'ArrayRef[StorageGateway_FileShareInfo]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
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

Paws::StorageGateway::ListFileSharesOutput

=head1 ATTRIBUTES


=head2 FileShareInfoList => ArrayRef[StorageGateway_FileShareInfo]

An array of information about the file gateway's file shares.


=head2 Marker => Str

If the request includes C<Marker>, the response returns that value in
this field.


=head2 NextMarker => Str

If a value is present, there are more file shares to return. In a
subsequent request, use C<NextMarker> as the value for C<Marker> to
retrieve the next set of file shares.


=head2 _request_id => Str


=cut

1;