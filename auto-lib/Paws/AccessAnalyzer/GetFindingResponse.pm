
package Paws::AccessAnalyzer::GetFindingResponse;
  use Moose;
  has Finding => (is => 'ro', isa => 'Paws::AccessAnalyzer::Finding', traits => ['NameInRequest'], request_name => 'finding');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetFindingResponse

=head1 ATTRIBUTES


=head2 Finding => L<Paws::AccessAnalyzer::Finding>

A C<finding> object that contains finding details.


=head2 _request_id => Str


=cut

