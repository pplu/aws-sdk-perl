
package Paws::AlexaForBusiness::CreateUserResponse;
  use Moose;
  has UserArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateUserResponse

=head1 ATTRIBUTES


=head2 UserArn => Str

The ARN of the newly created user in the response.


=head2 _request_id => Str


=cut

1;