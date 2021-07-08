
package Paws::CodeStarConnections::CreateHostOutput;
  use Moose;
  has HostArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarConnections::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::CreateHostOutput

=head1 ATTRIBUTES


=head2 HostArn => Str

The Amazon Resource Name (ARN) of the host to be created.


=head2 Tags => ArrayRef[L<Paws::CodeStarConnections::Tag>]




=head2 _request_id => Str


=cut

1;