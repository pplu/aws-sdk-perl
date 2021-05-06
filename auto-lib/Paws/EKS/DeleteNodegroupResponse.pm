
package Paws::EKS::DeleteNodegroupResponse;
  use Moose;
  has Nodegroup => (is => 'ro', isa => 'Paws::EKS::Nodegroup', traits => ['NameInRequest'], request_name => 'nodegroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DeleteNodegroupResponse

=head1 ATTRIBUTES


=head2 Nodegroup => L<Paws::EKS::Nodegroup>

The full description of your deleted node group.


=head2 _request_id => Str


=cut

