
package Paws::AppStream::CreateImageBuilderStreamingURLResult;
  use Moose;
  has Expires => (is => 'ro', isa => 'Str');
  has StreamingURL => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateImageBuilderStreamingURLResult

=head1 ATTRIBUTES


=head2 Expires => Str




=head2 StreamingURL => Str




=head2 _request_id => Str


=cut

1;