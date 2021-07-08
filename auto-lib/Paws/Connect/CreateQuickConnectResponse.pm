
package Paws::Connect::CreateQuickConnectResponse;
  use Moose;
  has QuickConnectARN => (is => 'ro', isa => 'Str');
  has QuickConnectId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateQuickConnectResponse

=head1 ATTRIBUTES


=head2 QuickConnectARN => Str

The Amazon Resource Name (ARN) for the quick connect.


=head2 QuickConnectId => Str

The identifier for the quick connect.


=head2 _request_id => Str


=cut

