
package Paws::Support::DescribeCommunicationsResponse;
  use Moose;
  has Communications => (is => 'ro', isa => 'ArrayRef[Paws::Support::Communication]', traits => ['NameInRequest'], request_name => 'communications' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeCommunicationsResponse

=head1 ATTRIBUTES


=head2 Communications => ArrayRef[L<Paws::Support::Communication>]

The communications for the case.


=head2 NextToken => Str

A resumption point for pagination.


=head2 _request_id => Str


=cut

1;