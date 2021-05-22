
package Paws::CodeStarConnections::CreateConnectionOutput;
  use Moose;
  has ConnectionArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarConnections::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::CreateConnectionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionArn => Str

The Amazon Resource Name (ARN) of the connection to be created. The ARN
is used as the connection reference when the connection is shared
between AWS services.

The ARN is never reused if the connection is deleted.


=head2 Tags => ArrayRef[L<Paws::CodeStarConnections::Tag>]

Specifies the tags applied to the resource.


=head2 _request_id => Str


=cut

1;