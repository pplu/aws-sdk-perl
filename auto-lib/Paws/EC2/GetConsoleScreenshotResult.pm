
package Paws::EC2::GetConsoleScreenshotResult;
  use Moose;
  has ImageData => (is => 'ro', isa => 'Str', request_name => 'imageData', traits => ['NameInRequest',]);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetConsoleScreenshotResult

=head1 ATTRIBUTES


=head2 ImageData => Str

The data that comprises the image.


=head2 InstanceId => Str

The ID of the instance.


=head2 _request_id => Str


=cut

