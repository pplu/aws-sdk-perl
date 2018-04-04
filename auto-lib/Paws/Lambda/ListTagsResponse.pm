
package Paws::Lambda::ListTagsResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Lambda::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListTagsResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Lambda::Tags>

The list of tags assigned to the function. For more information, see
Tagging Lambda Functions
(http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the B<AWS
Lambda Developer Guide>.


=head2 _request_id => Str


=cut

