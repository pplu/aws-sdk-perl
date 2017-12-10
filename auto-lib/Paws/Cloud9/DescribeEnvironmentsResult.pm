
package Paws::Cloud9::DescribeEnvironmentsResult;
  use Moose;
  has Environments => (is => 'ro', isa => 'ArrayRef[Paws::Cloud9::Environment]', traits => ['NameInRequest'], request_name => 'environments' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::DescribeEnvironmentsResult

=head1 ATTRIBUTES


=head2 Environments => ArrayRef[L<Paws::Cloud9::Environment>]

Information about the environments that are returned.


=head2 _request_id => Str


=cut

1;