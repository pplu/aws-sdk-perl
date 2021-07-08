
package Paws::IoTFleetHub::CreateApplicationResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationArn', required => 1);
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetHub::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

The ARN of the web application.


=head2 B<REQUIRED> ApplicationId => Str

The unique Id of the web application.


=head2 _request_id => Str


=cut

