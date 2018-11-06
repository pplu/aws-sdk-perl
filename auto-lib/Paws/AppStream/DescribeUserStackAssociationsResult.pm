
package Paws::AppStream::DescribeUserStackAssociationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UserStackAssociations => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::UserStackAssociation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeUserStackAssociationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 UserStackAssociations => ArrayRef[L<Paws::AppStream::UserStackAssociation>]

The UserStackAssociation objects.


=head2 _request_id => Str


=cut

1;