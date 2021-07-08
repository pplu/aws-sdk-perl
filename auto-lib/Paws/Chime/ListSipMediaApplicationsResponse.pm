
package Paws::Chime::ListSipMediaApplicationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SipMediaApplications => (is => 'ro', isa => 'ArrayRef[Paws::Chime::SipMediaApplication]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListSipMediaApplicationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 SipMediaApplications => ArrayRef[L<Paws::Chime::SipMediaApplication>]

List of SIP media applications and application details.


=head2 _request_id => Str


=cut

