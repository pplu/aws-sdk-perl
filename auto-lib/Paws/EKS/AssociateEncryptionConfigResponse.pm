
package Paws::EKS::AssociateEncryptionConfigResponse;
  use Moose;
  has Update => (is => 'ro', isa => 'Paws::EKS::Update', traits => ['NameInRequest'], request_name => 'update');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::AssociateEncryptionConfigResponse

=head1 ATTRIBUTES


=head2 Update => L<Paws::EKS::Update>




=head2 _request_id => Str


=cut

