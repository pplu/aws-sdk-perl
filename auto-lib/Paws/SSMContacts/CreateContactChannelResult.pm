
package Paws::SSMContacts::CreateContactChannelResult;
  use Moose;
  has ContactChannelArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::CreateContactChannelResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactChannelArn => Str

The ARN of the contact channel.


=head2 _request_id => Str


=cut

1;