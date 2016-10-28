
package Paws::ApiGateway::UsagePlans;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::UsagePlan]');
  has Position => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UsagePlans

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::UsagePlan>]

Gets the current item when enumerating the collection of UsagePlan.



=head2 Position => Str






=cut

