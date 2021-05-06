
package Paws::ServerlessRepo::GetApplicationPolicyResponse;
  use Moose;
  has Statements => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ApplicationPolicyStatement]', traits => ['NameInRequest'], request_name => 'statements');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::GetApplicationPolicyResponse

=head1 ATTRIBUTES


=head2 Statements => ArrayRef[L<Paws::ServerlessRepo::ApplicationPolicyStatement>]

An array of policy statements applied to the application.


=head2 _request_id => Str


=cut

