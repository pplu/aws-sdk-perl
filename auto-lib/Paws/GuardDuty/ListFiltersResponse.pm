
package Paws::GuardDuty::ListFiltersResponse;
  use Moose;
  has FilterNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'filterNames');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListFiltersResponse

=head1 ATTRIBUTES


=head2 FilterNames => ArrayRef[Str|Undef]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

