
package Paws::Chime::CreateAppInstanceUserResponse;
  use Moose;
  has AppInstanceUserArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateAppInstanceUserResponse

=head1 ATTRIBUTES


=head2 AppInstanceUserArn => Str

The user's ARN.


=head2 _request_id => Str


=cut

