
package Paws::DS::CreateComputerResult;
  use Moose;
  has Computer => (is => 'ro', isa => 'Paws::DS::Computer');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::CreateComputerResult

=head1 ATTRIBUTES


=head2 Computer => L<Paws::DS::Computer>

A Computer object that represents the computer account.


=head2 _request_id => Str


=cut

1;