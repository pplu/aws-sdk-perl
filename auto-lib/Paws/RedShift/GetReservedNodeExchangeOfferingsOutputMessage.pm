# Generated from callresult_class.tt

package Paws::RedShift::GetReservedNodeExchangeOfferingsOutputMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_ReservedNodeOffering/;
  has Marker => (is => 'ro', isa => Str);
  has ReservedNodeOfferings => (is => 'ro', isa => ArrayRef[RedShift_ReservedNodeOffering]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReservedNodeOfferings' => {
                                            'class' => 'Paws::RedShift::ReservedNodeOffering',
                                            'type' => 'ArrayRef[RedShift_ReservedNodeOffering]'
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

Paws::RedShift::GetReservedNodeExchangeOfferingsOutputMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional parameter that specifies the starting point for returning a
set of response records. When the results of a
C<GetReservedNodeExchangeOfferings> request exceed the value specified
in MaxRecords, Amazon Redshift returns a value in the marker field of
the response. You can retrieve the next set of response records by
providing the returned marker value in the marker parameter and
retrying the request.


=head2 ReservedNodeOfferings => ArrayRef[RedShift_ReservedNodeOffering]

Returns an array of ReservedNodeOffering objects.


=head2 _request_id => Str


=cut

