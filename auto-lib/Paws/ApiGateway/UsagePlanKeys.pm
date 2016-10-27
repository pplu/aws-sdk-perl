
package Paws::ApiGateway::UsagePlanKeys;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::UsagePlanKey]');
  has Position => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UsagePlanKeys

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::UsagePlanKey>]

Gets the current item of the usage plan keys collection.



=head2 Position => Str






=cut

