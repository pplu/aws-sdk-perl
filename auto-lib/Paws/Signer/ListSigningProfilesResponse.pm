
package Paws::Signer::ListSigningProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Profiles => (is => 'ro', isa => 'ArrayRef[Paws::Signer::SigningProfile]', traits => ['NameInRequest'], request_name => 'profiles');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListSigningProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Value for specifying the next set of paginated results to return.


=head2 Profiles => ArrayRef[L<Paws::Signer::SigningProfile>]

A list of profiles that are available in the AWS account. This includes
profiles with the status of C<CANCELED> if the C<includeCanceled>
parameter is set to C<true>.


=head2 _request_id => Str


=cut

