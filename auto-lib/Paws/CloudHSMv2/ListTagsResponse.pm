
package Paws::CloudHSMv2::ListTagsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::CloudHSMv2::Tag]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::ListTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque string that indicates that the response contains only a
subset of tags. Use this value in a subsequent C<ListTags> request to
get more tags.


=head2 B<REQUIRED> TagList => ArrayRef[L<Paws::CloudHSMv2::Tag>]

A list of tags.


=head2 _request_id => Str


=cut

1;