
package Paws::Signer::ListSigningPlatformsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Platforms => (is => 'ro', isa => 'ArrayRef[Paws::Signer::SigningPlatform]', traits => ['NameInRequest'], request_name => 'platforms');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListSigningPlatformsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Value for specifying the next set of paginated results to return.


=head2 Platforms => ArrayRef[L<Paws::Signer::SigningPlatform>]

A list of all platforms that match the request parameters.


=head2 _request_id => Str


=cut

