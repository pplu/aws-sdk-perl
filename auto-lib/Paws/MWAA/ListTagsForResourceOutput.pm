
package Paws::MWAA::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MWAA::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MWAA::TagMap>

The key-value tag pairs associated to your environment. To learn more,
see Tagging AWS resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).


=head2 _request_id => Str


=cut

