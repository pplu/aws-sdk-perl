
package Paws::DirectConnect::DescribeConnectionLoaResponse;
  use Moose;
  has Loa => (is => 'ro', isa => 'Paws::DirectConnect::Loa', traits => ['NameInRequest'], request_name => 'loa' );


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeConnectionLoaResponse

=head1 ATTRIBUTES


=head2 Loa => L<Paws::DirectConnect::Loa>






=cut

1;