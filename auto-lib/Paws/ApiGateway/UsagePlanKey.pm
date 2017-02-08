
package Paws::ApiGateway::UsagePlanKey;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'value');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UsagePlanKey

=head1 ATTRIBUTES


=head2 Id => Str

The Id of a usage plan key.


=head2 Name => Str

The name of a usage plan key.


=head2 Type => Str

The type of a usage plan key. Currently, the valid key type is
C<API_KEY>.


=head2 Value => Str

The value of a usage plan key.


=head2 _request_id => Str


=cut

