
package Paws::Glacier::GetDataRetrievalPolicyOutput;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::Glacier::DataRetrievalPolicy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GetDataRetrievalPolicyOutput

=head1 ATTRIBUTES


=head2 Policy => L<Paws::Glacier::DataRetrievalPolicy>

Contains the returned data retrieval policy in JSON format.


=head2 _request_id => Str


=cut

