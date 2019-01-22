
package Paws::DocDB::TagListMessage;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Tag]', request_name => 'Tag', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::TagListMessage

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::DocDB::Tag>]

A list of one or more tags.


=head2 _request_id => Str


=cut

