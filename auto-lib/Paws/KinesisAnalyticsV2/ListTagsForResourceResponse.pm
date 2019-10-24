# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::KinesisAnalyticsV2::Tag',
                           'type' => 'ArrayRef[KinesisAnalyticsV2_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[KinesisAnalyticsV2_Tag]

The key-value tags assigned to the application.


=head2 _request_id => Str


=cut

1;