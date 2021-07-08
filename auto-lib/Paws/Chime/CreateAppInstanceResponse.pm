
package Paws::Chime::CreateAppInstanceResponse;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateAppInstanceResponse

=head1 ATTRIBUTES


=head2 AppInstanceArn => Str

The Amazon Resource Number (ARN) of the C<AppInstance>.


=head2 _request_id => Str


=cut

