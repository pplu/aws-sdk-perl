
package Paws::SSOAdmin::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.


=head2 Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]

A set of key-value pairs that are used to manage the resource.


=head2 _request_id => Str


=cut

1;