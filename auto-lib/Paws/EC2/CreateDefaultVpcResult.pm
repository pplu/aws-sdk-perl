
package Paws::EC2::CreateDefaultVpcResult;
  use Moose;
  has Vpc => (is => 'ro', isa => 'Paws::EC2::Vpc', request_name => 'vpc', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateDefaultVpcResult

=head1 ATTRIBUTES


=head2 Vpc => L<Paws::EC2::Vpc>

Information about the VPC.


=head2 _request_id => Str


=cut

