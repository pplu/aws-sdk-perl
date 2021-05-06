
package Paws::GuardDuty::GetFindingsResponse;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::Finding]', traits => ['NameInRequest'], request_name => 'findings', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::GuardDuty::Finding>]

A list of findings.


=head2 _request_id => Str


=cut

