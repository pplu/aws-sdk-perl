# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeTapesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_Tape/;
  has Marker => (is => 'ro', isa => Str);
  has Tapes => (is => 'ro', isa => ArrayRef[StorageGateway_Tape]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tapes' => {
                            'class' => 'Paws::StorageGateway::Tape',
                            'type' => 'ArrayRef[StorageGateway_Tape]'
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

Paws::StorageGateway::DescribeTapesOutput

=head1 ATTRIBUTES


=head2 Marker => Str

An opaque string which can be used as part of a subsequent
DescribeTapes call to retrieve the next page of results.

If a response does not contain a marker, then there are no more results
to be retrieved.


=head2 Tapes => ArrayRef[StorageGateway_Tape]

An array of virtual tape descriptions.


=head2 _request_id => Str


=cut

1;