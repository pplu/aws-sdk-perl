# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::DeleteApplicationReferenceDataSourceResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::KinesisAnalyticsV2::Types qw//;
  has ApplicationARN => (is => 'ro', isa => Str);
  has ApplicationVersionId => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApplicationVersionId' => {
                                           'type' => 'Int'
                                         },
               'ApplicationARN' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DeleteApplicationReferenceDataSourceResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The application Amazon Resource Name (ARN).


=head2 ApplicationVersionId => Int

The updated version ID of the application.


=head2 _request_id => Str


=cut

1;