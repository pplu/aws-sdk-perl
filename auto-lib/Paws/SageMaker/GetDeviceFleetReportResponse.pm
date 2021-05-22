
package Paws::SageMaker::GetDeviceFleetReportResponse;
  use Moose;
  has AgentVersions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AgentVersion]');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceFleetArn => (is => 'ro', isa => 'Str', required => 1);
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);
  has DeviceStats => (is => 'ro', isa => 'Paws::SageMaker::DeviceStats');
  has ModelStats => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::EdgeModelStat]');
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::EdgeOutputConfig');
  has ReportGenerated => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::GetDeviceFleetReportResponse

=head1 ATTRIBUTES


=head2 AgentVersions => ArrayRef[L<Paws::SageMaker::AgentVersion>]

The versions of Edge Manager agent deployed on the fleet.


=head2 Description => Str

Description of the fleet.


=head2 B<REQUIRED> DeviceFleetArn => Str

The Amazon Resource Name (ARN) of the device.


=head2 B<REQUIRED> DeviceFleetName => Str

The name of the fleet.


=head2 DeviceStats => L<Paws::SageMaker::DeviceStats>

Status of devices.


=head2 ModelStats => ArrayRef[L<Paws::SageMaker::EdgeModelStat>]

Status of model on device.


=head2 OutputConfig => L<Paws::SageMaker::EdgeOutputConfig>

The output configuration for storing sample data collected by the
fleet.


=head2 ReportGenerated => Str

Timestamp of when the report was generated.


=head2 _request_id => Str


=cut

1;