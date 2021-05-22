
package Paws::Connect::ListApprovedOriginsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Origins => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListApprovedOriginsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 Origins => ArrayRef[Str|Undef]

The approved origins.


=head2 _request_id => Str


=cut

