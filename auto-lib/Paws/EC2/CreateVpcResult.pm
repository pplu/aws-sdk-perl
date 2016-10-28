
package Paws::EC2::CreateVpcResult;
  use Moose;
  has Vpc => (is => 'ro', isa => 'Paws::EC2::Vpc', xmlname => 'vpc', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcResult

=head1 ATTRIBUTES


=head2 Vpc => L<Paws::EC2::Vpc>

Information about the VPC.




=cut

