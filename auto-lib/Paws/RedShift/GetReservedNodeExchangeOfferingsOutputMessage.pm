
package Paws::RedShift::GetReservedNodeExchangeOfferingsOutputMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferings => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ReservedNodeOffering]', request_name => 'ReservedNodeOffering', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
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


=head2 ReservedNodeOfferings => ArrayRef[L<Paws::RedShift::ReservedNodeOffering>]

Returns an array of ReservedNodeOffering objects.


=head2 _request_id => Str


=cut

