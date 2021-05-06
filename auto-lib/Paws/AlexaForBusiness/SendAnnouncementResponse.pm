
package Paws::AlexaForBusiness::SendAnnouncementResponse;
  use Moose;
  has AnnouncementArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SendAnnouncementResponse

=head1 ATTRIBUTES


=head2 AnnouncementArn => Str

The identifier of the announcement.


=head2 _request_id => Str


=cut

1;