
package Paws::Support::DescribeServicesResponse;
  use Moose;
  has Services => (is => 'ro', isa => 'ArrayRef[Paws::Support::Service]', traits => ['Unwrapped'], xmlname => 'services' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeServicesResponse

=head1 ATTRIBUTES


=head2 Services => ArrayRef[L<Paws::Support::Service>]

A JSON-formatted list of AWS services.




=cut

1;