
package Paws::GuardDuty::CreatePublishingDestinationResponse;
  use Moose;
  has DestinationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreatePublishingDestinationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationId => Str

The ID of the publishing destination that is created.


=head2 _request_id => Str


=cut

