
package Paws::IoT::ListThingPrincipalsResponse;
  use Moose;
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'principals');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingPrincipalsResponse

=head1 ATTRIBUTES


=head2 Principals => ArrayRef[Str|Undef]

The principals associated with the thing.


=head2 _request_id => Str


=cut

