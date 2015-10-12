
package Paws::Inspector::LocalizeTextResponse;
  use Moose;
  has message => (is => 'ro', isa => 'Str');
  has results => (is => 'ro', isa => 'ArrayRef[Str]');


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::LocalizeTextResponse

=head1 ATTRIBUTES

=head2 message => Str

  Confirmation details of the action performed.
=head2 results => ArrayRef[Str]

  The resulting list of user-readable texts.


=cut

1;