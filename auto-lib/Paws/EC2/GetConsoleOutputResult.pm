
package Paws::EC2::GetConsoleOutputResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has InstanceId => (is => 'ro', isa => Str);
  has Output => (is => 'ro', isa => Str);
  has Timestamp => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Output' => 'output',
                       'InstanceId' => 'instanceId',
                       'Timestamp' => 'timestamp'
                     },
  'types' => {
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'Output' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

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

