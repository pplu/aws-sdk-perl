
package Paws::Outposts::GetOutpostOutput;
  use Moose;
  has Outpost => (is => 'ro', isa => 'Paws::Outposts::Outpost');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetOutpostOutput

=head1 ATTRIBUTES


=head2 Outpost => L<Paws::Outposts::Outpost>




=head2 _request_id => Str


=cut

