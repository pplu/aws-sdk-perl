
package Paws::RedshiftData::ListDatabasesResponse;
  use Moose;
  has Databases => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::ListDatabasesResponse

=head1 ATTRIBUTES


=head2 Databases => ArrayRef[Str|Undef]

The names of databases.


=head2 NextToken => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
NextToken value in the next NextToken parameter and retrying the
command. If the NextToken field is empty, all response records have
been retrieved for the request.


=head2 _request_id => Str


=cut

1;