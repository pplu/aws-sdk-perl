
package Paws::AmplifyBackend::DeleteTokenResponse;
  use Moose;
  has IsSuccess => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isSuccess');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::DeleteTokenResponse

=head1 ATTRIBUTES


=head2 IsSuccess => Bool

Indicates whether the request succeeded or failed.


=head2 _request_id => Str


=cut

