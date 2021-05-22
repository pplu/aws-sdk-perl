
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

The tags of the MWAA environments.


=head2 _request_id => Str


=cut

