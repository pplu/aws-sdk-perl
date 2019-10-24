
package Paws::IoT::CreateOTAUpdateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has AwsIotJobArn => (is => 'ro', isa => Str);
  has AwsIotJobId => (is => 'ro', isa => Str);
  has OtaUpdateArn => (is => 'ro', isa => Str);
  has OtaUpdateId => (is => 'ro', isa => Str);
  has OtaUpdateStatus => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OtaUpdateArn' => {
                                   'type' => 'Str'
                                 },
               'OtaUpdateStatus' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AwsIotJobArn' => {
                                   'type' => 'Str'
                                 },
               'OtaUpdateId' => {
                                  'type' => 'Str'
                                },
               'AwsIotJobId' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'OtaUpdateArn' => 'otaUpdateArn',
                       'OtaUpdateStatus' => 'otaUpdateStatus',
                       'AwsIotJobArn' => 'awsIotJobArn',
                       'OtaUpdateId' => 'otaUpdateId',
                       'AwsIotJobId' => 'awsIotJobId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateOTAUpdateResponse

=head1 ATTRIBUTES


=head2 AwsIotJobArn => Str

The AWS IoT job ARN associated with the OTA update.


=head2 AwsIotJobId => Str

The AWS IoT job ID associated with the OTA update.


=head2 OtaUpdateArn => Str

The OTA update ARN.


=head2 OtaUpdateId => Str

The OTA update ID.


=head2 OtaUpdateStatus => Str

The OTA update status.

Valid values are: C<"CREATE_PENDING">, C<"CREATE_IN_PROGRESS">, C<"CREATE_COMPLETE">, C<"CREATE_FAILED">
=head2 _request_id => Str


=cut

