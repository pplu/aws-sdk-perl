
package Paws::CustomerProfiles::AddProfileKeyResponse;
  use Moose;
  has KeyName => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::AddProfileKeyResponse

=head1 ATTRIBUTES


=head2 KeyName => Str

A searchable identifier of a customer profile.


=head2 Values => ArrayRef[Str|Undef]

A list of key values.


=head2 _request_id => Str


=cut

