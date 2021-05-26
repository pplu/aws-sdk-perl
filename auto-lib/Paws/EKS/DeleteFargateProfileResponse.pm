
package Paws::EKS::DeleteFargateProfileResponse;
  use Moose;
  has FargateProfile => (is => 'ro', isa => 'Paws::EKS::FargateProfile', traits => ['NameInRequest'], request_name => 'fargateProfile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DeleteFargateProfileResponse

=head1 ATTRIBUTES


=head2 FargateProfile => L<Paws::EKS::FargateProfile>

The deleted Fargate profile.


=head2 _request_id => Str


=cut

