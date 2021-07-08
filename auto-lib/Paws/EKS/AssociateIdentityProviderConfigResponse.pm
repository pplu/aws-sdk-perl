
package Paws::EKS::AssociateIdentityProviderConfigResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Update => (is => 'ro', isa => 'Paws::EKS::Update', traits => ['NameInRequest'], request_name => 'update');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::AssociateIdentityProviderConfigResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::EKS::TagMap>

The tags for the resource.


=head2 Update => L<Paws::EKS::Update>




=head2 _request_id => Str


=cut

