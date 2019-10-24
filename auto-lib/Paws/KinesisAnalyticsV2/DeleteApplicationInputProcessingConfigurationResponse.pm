# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::DeleteApplicationInputProcessingConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::KinesisAnalyticsV2::Types qw//;
  has ApplicationARN => (is => 'ro', isa => Str);
  has ApplicationVersionId => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationARN' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApplicationVersionId' => {
                                           'type' => 'Int'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DeleteApplicationInputProcessingConfigurationResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The Amazon Resource Name (ARN) of the application.


=head2 ApplicationVersionId => Int

The current application version ID.


=head2 _request_id => Str


=cut

1;