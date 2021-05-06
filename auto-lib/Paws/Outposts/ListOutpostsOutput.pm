
package Paws::Outposts::ListOutpostsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Outposts => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::Outpost]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListOutpostsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 Outposts => ArrayRef[L<Paws::Outposts::Outpost>]




=head2 _request_id => Str


=cut

