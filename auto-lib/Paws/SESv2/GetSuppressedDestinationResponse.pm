
package Paws::SESv2::GetSuppressedDestinationResponse;
  use Moose;
  has SuppressedDestination => (is => 'ro', isa => 'Paws::SESv2::SuppressedDestination', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetSuppressedDestinationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SuppressedDestination => L<Paws::SESv2::SuppressedDestination>

An object containing information about the suppressed email address.


=head2 _request_id => Str


=cut

