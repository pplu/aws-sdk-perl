
package Paws::Shield::CreateProtectionResponse;
  use Moose;
  has ProtectionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::CreateProtectionResponse

=head1 ATTRIBUTES


=head2 ProtectionId => Str

The unique identifier (ID) for the Protection object that is created.


=head2 _request_id => Str


=cut

1;