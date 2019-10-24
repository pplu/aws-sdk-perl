# Generated from callresult_class.tt

package Paws::RedShift::ReservedNodeOfferingsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_ReservedNodeOffering/;
  has Marker => (is => 'ro', isa => Str);
  has ReservedNodeOfferings => (is => 'ro', isa => ArrayRef[RedShift_ReservedNodeOffering]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReservedNodeOfferings' => {
                                            'class' => 'Paws::RedShift::ReservedNodeOffering',
                                            'type' => 'ArrayRef[RedShift_ReservedNodeOffering]'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'ReservedNodeOfferings' => 'ReservedNodeOffering'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ReservedNodeOfferingsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 ReservedNodeOfferings => ArrayRef[RedShift_ReservedNodeOffering]

A list of C<ReservedNodeOffering> objects.


=head2 _request_id => Str


=cut

