
package Paws::ServiceQuotas::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceQuotas::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::ServiceQuotas::Tag>]

A complex data type that contains zero or more tag elements.


=head2 _request_id => Str


=cut

1;