
package Paws::Support::CreateCaseResponse;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::CreateCaseResponse

=head1 ATTRIBUTES


=head2 CaseId => Str

The AWS Support case ID requested or returned in the call. The case ID
is an alphanumeric string formatted as shown in this example:
case-I<12345678910-2013-c4c1d2bf33c5cf47>


=head2 _request_id => Str


=cut

1;