
package Paws::ACM::ListTagsForCertificateResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ACM::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ListTagsForCertificateResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::ACM::Tag>]

The key-value pairs that define the applied tags.


=head2 _request_id => Str


=cut

1;