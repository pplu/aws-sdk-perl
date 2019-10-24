# Generated from callresult_class.tt

package Paws::RedShift::OrderableClusterOptionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_OrderableClusterOption/;
  has Marker => (is => 'ro', isa => Str);
  has OrderableClusterOptions => (is => 'ro', isa => ArrayRef[RedShift_OrderableClusterOption]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrderableClusterOptions' => {
                                              'class' => 'Paws::RedShift::OrderableClusterOption',
                                              'type' => 'ArrayRef[RedShift_OrderableClusterOption]'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'OrderableClusterOptions' => 'OrderableClusterOption'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::OrderableClusterOptionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 OrderableClusterOptions => ArrayRef[RedShift_OrderableClusterOption]

An C<OrderableClusterOption> structure containing information about
orderable options for the cluster.


=head2 _request_id => Str


=cut

