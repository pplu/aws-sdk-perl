
package Paws::Health::DescribeEventDetailsForOrganizationResponse;
  use Moose;
  has FailedSet => (is => 'ro', isa => 'ArrayRef[Paws::Health::OrganizationEventDetailsErrorItem]', traits => ['NameInRequest'], request_name => 'failedSet' );
  has SuccessfulSet => (is => 'ro', isa => 'ArrayRef[Paws::Health::OrganizationEventDetails]', traits => ['NameInRequest'], request_name => 'successfulSet' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEventDetailsForOrganizationResponse

=head1 ATTRIBUTES


=head2 FailedSet => ArrayRef[L<Paws::Health::OrganizationEventDetailsErrorItem>]

Error messages for any events that could not be retrieved.


=head2 SuccessfulSet => ArrayRef[L<Paws::Health::OrganizationEventDetails>]

Information about the events that could be retrieved.


=head2 _request_id => Str


=cut

1;