# Generated from json/callresult_class.tt

package Paws::Cloud9::DescribeEnvironmentStatusResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Cloud9::Types qw//;
  has Message => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Message' => 'message',
                       'Status' => 'status'
                     },
  'types' => {
               'Message' => {
                              'type' => 'Str'
                            },
               'Status' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::DescribeEnvironmentStatusResult

=head1 ATTRIBUTES


=head2 Message => Str

Any informational message about the status of the environment.


=head2 Status => Str

The status of the environment. Available values include:

=over

=item *

C<connecting>: The environment is connecting.

=item *

C<creating>: The environment is being created.

=item *

C<deleting>: The environment is being deleted.

=item *

C<error>: The environment is in an error state.

=item *

C<ready>: The environment is ready.

=item *

C<stopped>: The environment is stopped.

=item *

C<stopping>: The environment is stopping.

=back


Valid values are: C<"error">, C<"creating">, C<"connecting">, C<"ready">, C<"stopping">, C<"stopped">, C<"deleting">
=head2 _request_id => Str


=cut

1;