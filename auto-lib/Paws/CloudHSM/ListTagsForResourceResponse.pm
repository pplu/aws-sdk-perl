
package Paws::CloudHSM::ListTagsForResourceResponse;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::CloudHSM::Tag]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagList => ArrayRef[L<Paws::CloudHSM::Tag>]

One or more tags.


=head2 _request_id => Str


=cut

1;