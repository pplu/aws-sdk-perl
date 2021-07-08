
package Paws::Connect::StartTaskContactResponse;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartTaskContactResponse

=head1 ATTRIBUTES


=head2 ContactId => Str

The identifier of this contact within the Amazon Connect instance.


=head2 _request_id => Str


=cut

