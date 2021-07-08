
package Paws::ResourceTagging::GetTagKeysOutput;
  use Moose;
  has PaginationToken => (is => 'ro', isa => 'Str');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::GetTagKeysOutput

=head1 ATTRIBUTES


=head2 PaginationToken => Str

A string that indicates that there is more data available than this
response contains. To receive the next part of the response, specify
this response value as the C<PaginationToken> value in the request for
the next page.


=head2 TagKeys => ArrayRef[Str|Undef]

A list of all tag keys in the AWS account.


=head2 _request_id => Str


=cut

1;