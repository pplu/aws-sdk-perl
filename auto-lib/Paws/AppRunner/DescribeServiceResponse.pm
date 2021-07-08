
package Paws::AppRunner::DescribeServiceResponse;
  use Moose;
  has Service => (is => 'ro', isa => 'Paws::AppRunner::Service', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::DescribeServiceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Service => L<Paws::AppRunner::Service>

A full description of the App Runner service that you specified in this
request.


=head2 _request_id => Str


=cut

1;