
package Paws::AppStream::CreateImageBuilderResult;
  use Moose;
  has ImageBuilder => (is => 'ro', isa => 'Paws::AppStream::ImageBuilder');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateImageBuilderResult

=head1 ATTRIBUTES


=head2 ImageBuilder => L<Paws::AppStream::ImageBuilder>




=head2 _request_id => Str


=cut

1;