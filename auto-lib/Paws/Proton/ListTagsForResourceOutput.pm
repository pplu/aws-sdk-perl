
package Paws::Proton::ListTagsForResourceOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Tag]', traits => ['NameInRequest'], request_name => 'tags' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to indicate the location of the next resource tag in the array
of resource tags, after the current requested list of resource tags.


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Proton::Tag>]

An array of resource tags with detail data.


=head2 _request_id => Str


=cut

1;