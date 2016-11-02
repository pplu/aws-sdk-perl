
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

The permission statement you specified in the request. The response
returns the same as a string using a backslash ("\") as an escape
character in the JSON.


=head2 _request_id => Str


=cut

