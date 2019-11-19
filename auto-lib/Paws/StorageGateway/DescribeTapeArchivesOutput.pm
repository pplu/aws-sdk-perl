# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeTapeArchivesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_TapeArchive/;
  has Marker => (is => 'ro', isa => Str);
  has TapeArchives => (is => 'ro', isa => ArrayRef[StorageGateway_TapeArchive]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TapeArchives' => {
                                   'type' => 'ArrayRef[StorageGateway_TapeArchive]',
                                   'class' => 'Paws::StorageGateway::TapeArchive'
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

Paws::StorageGateway::DescribeTapeArchivesOutput

=head1 ATTRIBUTES


=head2 Marker => Str

An opaque string that indicates the position at which the virtual tapes
that were fetched for description ended. Use this marker in your next
request to fetch the next set of virtual tapes in the virtual tape
shelf (VTS). If there are no more virtual tapes to describe, this field
does not appear in the response.


=head2 TapeArchives => ArrayRef[StorageGateway_TapeArchive]

An array of virtual tape objects in the virtual tape shelf (VTS). The
description includes of the Amazon Resource Name (ARN) of the virtual
tapes. The information returned includes the Amazon Resource Names
(ARNs) of the tapes, size of the tapes, status of the tapes, progress
of the description and tape barcode.


=head2 _request_id => Str


=cut

1;