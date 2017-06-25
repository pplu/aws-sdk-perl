
package Paws::DAX::TagResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DAX::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::TagResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::DAX::Tag>]

The list of tags that are associated with the DAX resource.


=head2 _request_id => Str


=cut

1;