
package Paws::Pinpoint::CampaignsResponse;
  use Moose;
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::CampaignResponse]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

<<<<<<< HEAD
  has _request_id => (is => 'ro', isa => 'Str');
=======
>>>>>>> 186ed52fd2853f25b0e1410d04060db03e2f042c
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CampaignsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Item => ArrayRef[L<Paws::Pinpoint::CampaignResponse>]

An array of responses, one for each campaign that's associated with the
application.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

