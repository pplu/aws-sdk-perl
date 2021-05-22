
package Paws::SSMContacts::CreateContactResult;
  use Moose;
  has ContactArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::CreateContactResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactArn => Str

The Amazon Resource Name (ARN) of the created contact or escalation
plan.


=head2 _request_id => Str


=cut

1;