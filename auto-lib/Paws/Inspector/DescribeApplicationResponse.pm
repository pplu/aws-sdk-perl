
package Paws::Inspector::DescribeApplicationResponse;
  use Moose;
  has Application => (is => 'ro', isa => 'Paws::Inspector::Application', traits => ['Unwrapped'], xmlname => 'application' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeApplicationResponse

=head1 ATTRIBUTES

=head2 Application => L<Paws::Inspector::Application>

  Information about the application.


=cut

1;