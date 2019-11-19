# Generated from json/callresult_class.tt

package Paws::KinesisAnalytics::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[KinesisAnalytics_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::KinesisAnalytics::Tag',
                           'type' => 'ArrayRef[KinesisAnalytics_Tag]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[KinesisAnalytics_Tag]

The key-value tags assigned to the application.


=head2 _request_id => Str


=cut

1;