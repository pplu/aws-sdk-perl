
package Paws::WorkMail::ListAccessControlRulesResponse;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::AccessControlRule]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListAccessControlRulesResponse

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[L<Paws::WorkMail::AccessControlRule>]

The access control rules.


=head2 _request_id => Str


=cut

1;