
package Paws::IAM::GetAccountSummaryResponse;
  use Moose;
  has SummaryMap => (is => 'ro', isa => 'Paws::IAM::SummaryMapType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetAccountSummaryResponse

=head1 ATTRIBUTES


=head2 SummaryMap => L<Paws::IAM::SummaryMapType>

A set of keyE<ndash>value pairs containing information about IAM entity
usage and IAM quotas.


=head2 _request_id => Str


=cut

