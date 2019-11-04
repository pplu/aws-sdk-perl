
package Paws::CloudWatchEvents::CreatePartnerEventSourceResponse;
  use Moose;
  has EventSourceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreatePartnerEventSourceResponse

=head1 ATTRIBUTES


=head2 EventSourceArn => Str

The ARN of the partner event source.


=head2 _request_id => Str


=cut

1;