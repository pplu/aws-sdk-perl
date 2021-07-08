
package Paws::EKS::DeleteAddonResponse;
  use Moose;
  has Addon => (is => 'ro', isa => 'Paws::EKS::Addon', traits => ['NameInRequest'], request_name => 'addon');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DeleteAddonResponse

=head1 ATTRIBUTES


=head2 Addon => L<Paws::EKS::Addon>




=head2 _request_id => Str


=cut

