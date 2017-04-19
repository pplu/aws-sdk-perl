
package Paws::EC2::CreateNetworkAclResult;
  use Moose;
  has NetworkAcl => (is => 'ro', isa => 'Paws::EC2::NetworkAcl', request_name => 'networkAcl', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkAclResult

=head1 ATTRIBUTES


=head2 NetworkAcl => L<Paws::EC2::NetworkAcl>

Information about the network ACL.


=head2 _request_id => Str


=cut

