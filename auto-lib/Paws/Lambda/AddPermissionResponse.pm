
package Paws::Lambda::AddPermissionResponse;
  use Moose;
  has Statement => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::AddPermissionResponse

=head1 ATTRIBUTES


=head2 Statement => Str

The permission statement added to the function policy.


=head2 _request_id => Str


=cut

