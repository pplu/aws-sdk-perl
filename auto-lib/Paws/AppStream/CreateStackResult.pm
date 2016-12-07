
package Paws::AppStream::CreateStackResult;
  use Moose;
  has Stack => (is => 'ro', isa => 'Paws::AppStream::Stack');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateStackResult

=head1 ATTRIBUTES


=head2 Stack => L<Paws::AppStream::Stack>

The details for the created stack.


=head2 _request_id => Str


=cut

1;