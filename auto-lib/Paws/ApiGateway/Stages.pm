
package Paws::ApiGateway::Stages;
  use Moose;
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::Stage]', traits => ['NameInRequest'], request_name => 'item');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Stages

=head1 ATTRIBUTES


=head2 Item => ArrayRef[L<Paws::ApiGateway::Stage>]

The current page of elements from this collection.


=head2 _request_id => Str


=cut

