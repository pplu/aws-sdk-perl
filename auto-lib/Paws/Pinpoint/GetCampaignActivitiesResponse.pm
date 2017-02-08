
package Paws::Pinpoint::GetCampaignActivitiesResponse;
  use Moose;
  has ActivitiesResponse => (is => 'ro', isa => 'Paws::Pinpoint::ActivitiesResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ActivitiesResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetCampaignActivitiesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivitiesResponse => L<Paws::Pinpoint::ActivitiesResponse>




=head2 _request_id => Str


=cut

