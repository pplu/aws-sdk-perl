
package Paws::MQ::DeleteBrokerResponse;
  use Moose;
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DeleteBrokerResponse

=head1 ATTRIBUTES


=head2 BrokerId => Str

The unique ID that Amazon MQ generates for the broker.


=head2 _request_id => Str


=cut

