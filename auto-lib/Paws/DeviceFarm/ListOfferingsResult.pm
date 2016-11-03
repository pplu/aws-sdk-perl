
package Paws::DeviceFarm::ListOfferingsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Offerings => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Offering]', traits => ['NameInRequest'], request_name => 'offerings' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListOfferingsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 Offerings => ArrayRef[L<Paws::DeviceFarm::Offering>]

A value representing the list offering results.




=cut

1;