
package Paws::IoT::CreateOTAUpdateResponse;
  use Moose;
  has AwsIotJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsIotJobArn');
  has AwsIotJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsIotJobId');
  has OtaUpdateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'otaUpdateArn');
  has OtaUpdateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'otaUpdateId');
  has OtaUpdateStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'otaUpdateStatus');

  has _request_id => (is => 'ro', isa => 'Str');
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

