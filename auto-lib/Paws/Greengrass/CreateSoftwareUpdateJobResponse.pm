
package Paws::Greengrass::CreateSoftwareUpdateJobResponse;
  use Moose;
  has IotJobArn => (is => 'ro', isa => 'Str');
  has IotJobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateSoftwareUpdateJobResponse

=head1 ATTRIBUTES


=head2 IotJobArn => Str

The IoT Job ARN corresponding to this update.


=head2 IotJobId => Str

The IoT Job Id corresponding to this update.


=head2 _request_id => Str


=cut

