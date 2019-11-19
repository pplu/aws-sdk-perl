# Generated from json/callresult_class.tt

package Paws::CodeDeploy::StopDeploymentOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw//;
  has Status => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Status' => 'status',
                       'StatusMessage' => 'statusMessage'
                     },
  'types' => {
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::StopDeploymentOutput

=head1 ATTRIBUTES


=head2 Status => Str

The status of the stop deployment operation:

=over

=item *

Pending: The stop operation is pending.

=item *

Succeeded: The stop operation was successful.

=back


Valid values are: C<"Pending">, C<"Succeeded">
=head2 StatusMessage => Str

An accompanying status message.


=head2 _request_id => Str


=cut

1;