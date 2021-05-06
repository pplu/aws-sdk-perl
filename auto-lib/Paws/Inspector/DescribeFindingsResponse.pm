
package Paws::Inspector::DescribeFindingsResponse;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'Paws::Inspector::FailedItems', traits => ['NameInRequest'], request_name => 'failedItems' , required => 1);
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Finding]', traits => ['NameInRequest'], request_name => 'findings' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => L<Paws::Inspector::FailedItems>

Finding details that cannot be described. An error code is provided for
each failed item.


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::Inspector::Finding>]

Information about the finding.


=head2 _request_id => Str


=cut

1;