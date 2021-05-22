
package Paws::AccessAnalyzer::ValidatePolicyResponse;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::ValidatePolicyFinding]', traits => ['NameInRequest'], request_name => 'findings', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ValidatePolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::AccessAnalyzer::ValidatePolicyFinding>]

The list of findings in a policy returned by Access Analyzer based on
its suite of policy checks.


=head2 NextToken => Str

A token used for pagination of results returned.


=head2 _request_id => Str


=cut

