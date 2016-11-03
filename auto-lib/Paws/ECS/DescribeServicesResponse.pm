
package Paws::ECS::DescribeServicesResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['NameInRequest'], request_name => 'failures' );
  has Services => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Service]', traits => ['NameInRequest'], request_name => 'services' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeServicesResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

Any failures associated with the call.



=head2 Services => ArrayRef[L<Paws::ECS::Service>]

The list of services described.




=cut

1;