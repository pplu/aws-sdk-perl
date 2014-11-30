
package Paws::RDS::TagListMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::TagListMessage

=head1 ATTRIBUTES

=head2 TagList => ArrayRef[Paws::RDS::Tag]

  

List of tags returned by the ListTagsForResource operation.











=cut

