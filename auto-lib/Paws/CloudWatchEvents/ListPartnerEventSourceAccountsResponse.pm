
package Paws::CloudWatchEvents::ListPartnerEventSourceAccountsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PartnerEventSourceAccounts => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::PartnerEventSourceAccount]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListPartnerEventSourceAccountsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token you can use in a subsequent operation to retrieve the next set
of results.


=head2 PartnerEventSourceAccounts => ArrayRef[L<Paws::CloudWatchEvents::PartnerEventSourceAccount>]

The list of partner event sources returned by the operation.


=head2 _request_id => Str


=cut

1;