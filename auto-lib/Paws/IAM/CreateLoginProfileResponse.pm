
package Paws::IAM::CreateLoginProfileResponse;
  use Moose;
  has LoginProfile => (is => 'ro', isa => 'Paws::IAM::LoginProfile', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateLoginProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoginProfile => L<Paws::IAM::LoginProfile>

A structure containing the user name and password create date.


=head2 _request_id => Str


=cut

