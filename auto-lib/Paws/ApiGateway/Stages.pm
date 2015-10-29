
package Paws::ApiGateway::Stages;
  use Moose;
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::Stage]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Stages

=head1 ATTRIBUTES

=head2 Item => ArrayRef[L<Paws::ApiGateway::Stage>]

  An individual Stage resource.


=cut

