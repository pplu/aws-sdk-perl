# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::AddApplicationReferenceDataSourceResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_ReferenceDataSourceDescription/;
  has ApplicationARN => (is => 'ro', isa => Str);
  has ApplicationVersionId => (is => 'ro', isa => Int);
  has ReferenceDataSourceDescriptions => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_ReferenceDataSourceDescription]);

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
               'ReferenceDataSourceDescriptions' => {
                                                      'class' => 'Paws::KinesisAnalyticsV2::ReferenceDataSourceDescription',
                                                      'type' => 'ArrayRef[KinesisAnalyticsV2_ReferenceDataSourceDescription]'
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

Paws::KinesisAnalyticsV2::AddApplicationReferenceDataSourceResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The application Amazon Resource Name (ARN).


=head2 ApplicationVersionId => Int

The updated application version ID. Amazon Kinesis Data Analytics
increments this ID when the application is updated.


=head2 ReferenceDataSourceDescriptions => ArrayRef[KinesisAnalyticsV2_ReferenceDataSourceDescription]

Describes reference data sources configured for the application.


=head2 _request_id => Str


=cut

1;