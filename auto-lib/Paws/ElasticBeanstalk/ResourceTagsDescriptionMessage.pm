# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ResourceTagsDescriptionMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_Tag/;
  has ResourceArn => (is => 'ro', isa => Str);
  has ResourceTags => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceTags' => {
                                   'class' => 'Paws::ElasticBeanstalk::Tag',
                                   'type' => 'ArrayRef[ElasticBeanstalk_Tag]'
                                 },
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ResourceTagsDescriptionMessage

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the resouce for which a tag list was
requested.


=head2 ResourceTags => ArrayRef[ElasticBeanstalk_Tag]

A list of tag key-value pairs.


=head2 _request_id => Str


=cut

