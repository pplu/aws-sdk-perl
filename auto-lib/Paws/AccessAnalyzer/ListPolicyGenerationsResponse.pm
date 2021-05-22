
package Paws::AccessAnalyzer::ListPolicyGenerationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PolicyGenerations => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::PolicyGeneration]', traits => ['NameInRequest'], request_name => 'policyGenerations', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListPolicyGenerationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used for pagination of results returned.


=head2 B<REQUIRED> PolicyGenerations => ArrayRef[L<Paws::AccessAnalyzer::PolicyGeneration>]

A C<PolicyGeneration> object that contains details about the generated
policy.


=head2 _request_id => Str


=cut

