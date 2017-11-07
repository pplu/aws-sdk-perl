
package Paws::ElasticBeanstalk::ResourceTagsDescriptionMessage;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ResourceTagsDescriptionMessage

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the resouce for which a tag list was
requested.


=head2 ResourceTags => ArrayRef[L<Paws::ElasticBeanstalk::Tag>]

A list of tag key-value pairs.


=head2 _request_id => Str


=cut

