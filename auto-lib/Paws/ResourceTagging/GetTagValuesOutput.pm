
package Paws::ResourceTagging::GetTagValuesOutput;
  use Moose;
  has PaginationToken => (is => 'ro', isa => 'Str');
  has TagValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::GetTagValuesOutput

=head1 ATTRIBUTES


=head2 PaginationToken => Str

A string that indicates that there is more data available than this
response contains. To receive the next part of the response, specify
this response value as the C<PaginationToken> value in the request for
the next page.


=head2 TagValues => ArrayRef[Str|Undef]

A list of all tag values for the specified key currently used in the
specified AWS Region for the calling AWS account.


=head2 _request_id => Str


=cut

1;