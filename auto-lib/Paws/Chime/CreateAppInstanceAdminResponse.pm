
package Paws::Chime::CreateAppInstanceAdminResponse;
  use Moose;
  has AppInstanceAdmin => (is => 'ro', isa => 'Paws::Chime::Identity');
  has AppInstanceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateAppInstanceAdminResponse

=head1 ATTRIBUTES


=head2 AppInstanceAdmin => L<Paws::Chime::Identity>

The name and ARN of the admin for the C<AppInstance>.


=head2 AppInstanceArn => Str

The ARN of the of the admin for the C<AppInstance>.


=head2 _request_id => Str


=cut

