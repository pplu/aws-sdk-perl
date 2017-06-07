
package Paws::CloudDirectory::CreateObjectResponse;
  use Moose;
  has ObjectIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::CreateObjectResponse

=head1 ATTRIBUTES


=head2 ObjectIdentifier => Str

The identifier that is associated with the object.


=head2 _request_id => Str


=cut

