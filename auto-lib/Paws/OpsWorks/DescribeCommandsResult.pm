# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeCommandsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_Command/;
  has Commands => (is => 'ro', isa => ArrayRef[OpsWorks_Command]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Commands' => {
                               'class' => 'Paws::OpsWorks::Command',
                               'type' => 'ArrayRef[OpsWorks_Command]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeCommandsResult

=head1 ATTRIBUTES


=head2 Commands => ArrayRef[OpsWorks_Command]

An array of C<Command> objects that describe each of the specified
commands.


=head2 _request_id => Str


=cut

1;