# Generated from json/callresult_class.tt

package Paws::StorageGateway::ListTapesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_TapeInfo/;
  has Marker => (is => 'ro', isa => Str);
  has TapeInfos => (is => 'ro', isa => ArrayRef[StorageGateway_TapeInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TapeInfos' => {
                                'class' => 'Paws::StorageGateway::TapeInfo',
                                'type' => 'ArrayRef[StorageGateway_TapeInfo]'
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

Paws::StorageGateway::ListTapesOutput

=head1 ATTRIBUTES


=head2 Marker => Str

A string that indicates the position at which to begin returning the
next list of tapes. Use the marker in your next request to continue
pagination of tapes. If there are no more tapes to list, this element
does not appear in the response body.


=head2 TapeInfos => ArrayRef[StorageGateway_TapeInfo]




=head2 _request_id => Str


=cut

1;