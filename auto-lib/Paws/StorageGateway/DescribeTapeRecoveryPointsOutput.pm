# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeTapeRecoveryPointsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_TapeRecoveryPointInfo/;
  has GatewayARN => (is => 'ro', isa => Str);
  has Marker => (is => 'ro', isa => Str);
  has TapeRecoveryPointInfos => (is => 'ro', isa => ArrayRef[StorageGateway_TapeRecoveryPointInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TapeRecoveryPointInfos' => {
                                             'class' => 'Paws::StorageGateway::TapeRecoveryPointInfo',
                                             'type' => 'ArrayRef[StorageGateway_TapeRecoveryPointInfo]'
                                           },
               'Marker' => {
                             'type' => 'Str'
                           },
               'GatewayARN' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeTapeRecoveryPointsOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 Marker => Str

An opaque string that indicates the position at which the virtual tape
recovery points that were listed for description ended.

Use this marker in your next request to list the next set of virtual
tape recovery points in the list. If there are no more recovery points
to describe, this field does not appear in the response.


=head2 TapeRecoveryPointInfos => ArrayRef[StorageGateway_TapeRecoveryPointInfo]

An array of TapeRecoveryPointInfos that are available for the specified
gateway.


=head2 _request_id => Str


=cut

1;