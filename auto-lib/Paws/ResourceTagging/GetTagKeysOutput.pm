
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

A string that indicates that the response contains more data than can
be returned in a single response. To receive additional data, specify
this string for the C<PaginationToken> value in a subsequent request.


=head2 TagKeys => ArrayRef[Str|Undef]

A list of all tag keys in the AWS account.


=head2 _request_id => Str


=cut

1;