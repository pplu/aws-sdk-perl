
package Paws::Chime::UpdateAppInstanceUserResponse;
  use Moose;
  has AppInstanceUserArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateAppInstanceUserResponse

=head1 ATTRIBUTES


=head2 AppInstanceUserArn => Str

The ARN of the C<AppInstanceUser>.


=head2 _request_id => Str


=cut

