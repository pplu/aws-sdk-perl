
package Paws::EKS::CreateFargateProfileResponse;
  use Moose;
  has FargateProfile => (is => 'ro', isa => 'Paws::EKS::FargateProfile', traits => ['NameInRequest'], request_name => 'fargateProfile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::CreateFargateProfileResponse

=head1 ATTRIBUTES


=head2 FargateProfile => L<Paws::EKS::FargateProfile>

The full description of your new Fargate profile.


=head2 _request_id => Str


=cut

