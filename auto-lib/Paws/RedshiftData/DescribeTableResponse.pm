
package Paws::RedshiftData::DescribeTableResponse;
  use Moose;
  has ColumnList => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftData::ColumnMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::DescribeTableResponse

=head1 ATTRIBUTES


=head2 ColumnList => ArrayRef[L<Paws::RedshiftData::ColumnMetadata>]

A list of columns in the table.


=head2 NextToken => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
NextToken value in the next NextToken parameter and retrying the
command. If the NextToken field is empty, all response records have
been retrieved for the request.


=head2 TableName => Str

The table name.


=head2 _request_id => Str


=cut

1;