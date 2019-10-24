# Generated from callresult_class.tt

package Paws::RedShift::TableRestoreStatusMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_TableRestoreStatus/;
  has Marker => (is => 'ro', isa => Str);
  has TableRestoreStatusDetails => (is => 'ro', isa => ArrayRef[RedShift_TableRestoreStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TableRestoreStatusDetails' => {
                                                'class' => 'Paws::RedShift::TableRestoreStatus',
                                                'type' => 'ArrayRef[RedShift_TableRestoreStatus]'
                                              },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'TableRestoreStatusDetails' => 'TableRestoreStatus'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::TableRestoreStatusMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A pagination token that can be used in a subsequent
DescribeTableRestoreStatus request.


=head2 TableRestoreStatusDetails => ArrayRef[RedShift_TableRestoreStatus]

A list of status details for one or more table restore requests.


=head2 _request_id => Str


=cut

