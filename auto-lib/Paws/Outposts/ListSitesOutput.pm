
package Paws::Outposts::ListSitesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Sites => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::Site]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListSitesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 Sites => ArrayRef[L<Paws::Outposts::Site>]




=head2 _request_id => Str


=cut

