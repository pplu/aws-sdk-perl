
package Paws::IoT::CreateSecurityProfileResponse;
  use Moose;
  has SecurityProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'securityProfileArn');
  has SecurityProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'securityProfileName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateSecurityProfileResponse

=head1 ATTRIBUTES


=head2 SecurityProfileArn => Str

The ARN of the security profile.


=head2 SecurityProfileName => Str

The name you gave to the security profile.


=head2 _request_id => Str


=cut

