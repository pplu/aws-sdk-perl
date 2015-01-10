
package Paws::Glacier::GetDataRetrievalPolicyOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Policy => (is => 'ro', isa => 'Paws::Glacier::DataRetrievalPolicy');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GetDataRetrievalPolicyOutput

=head1 ATTRIBUTES

=head2 Policy => Paws::Glacier::DataRetrievalPolicy

  


=cut

