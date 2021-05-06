
package Paws::EC2::GetConsoleOutputResult;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest',]);
  has Output => (is => 'ro', isa => 'Str', request_name => 'output', traits => ['NameInRequest',]);
  has Timestamp => (is => 'ro', isa => 'Str', request_name => 'timestamp', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetConsoleOutputResult

=head1 ATTRIBUTES


=head2 InstanceId => Str

The ID of the instance.


=head2 Output => Str

The console output, base64-encoded. If you are using a command line
tool, the tool decodes the output for you.


=head2 Timestamp => Str

The time at which the output was last updated.


=head2 _request_id => Str


=cut

