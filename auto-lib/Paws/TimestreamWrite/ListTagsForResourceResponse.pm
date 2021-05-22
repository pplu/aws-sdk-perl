
package Paws::TimestreamWrite::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamWrite::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::TimestreamWrite::Tag>]

The tags currently associated with the Timestream resource.


=head2 _request_id => Str


=cut

1;