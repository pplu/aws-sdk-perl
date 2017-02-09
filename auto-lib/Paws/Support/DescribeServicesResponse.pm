
package Paws::Support::DescribeServicesResponse;
  use Moose;
  has Services => (is => 'ro', isa => 'ArrayRef[Paws::Support::Service]', traits => ['NameInRequest'], request_name => 'services' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeServicesResponse

=head1 ATTRIBUTES


=head2 Services => ArrayRef[L<Paws::Support::Service>]

A JSON-formatted list of AWS services.


=head2 _request_id => Str


=cut

1;