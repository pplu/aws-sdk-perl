
package Paws::Inspector::LocalizeTextResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message' );
  has Results => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'results' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::LocalizeTextResponse

=head1 ATTRIBUTES


=head2 Message => Str

Confirmation details of the action performed.



=head2 Results => ArrayRef[Str]

The resulting list of user-readable texts.




=cut

1;