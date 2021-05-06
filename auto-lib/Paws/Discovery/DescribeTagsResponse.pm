
package Paws::Discovery::DescribeTagsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::ConfigurationTag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The call returns a token. Use this token to get the next set of
results.


=head2 Tags => ArrayRef[L<Paws::Discovery::ConfigurationTag>]

Depending on the input, this is a list of configuration items tagged
with a specific tag, or a list of tags for a specific configuration
item.


=head2 _request_id => Str


=cut

1;