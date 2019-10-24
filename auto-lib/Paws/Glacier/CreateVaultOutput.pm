
package Paws::Glacier::CreateVaultOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw//;
  has Location => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Location' => {
                               'type' => 'Str'
                             }
             },
  'ParamInHeader' => {
                       'Location' => 'Location'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::CreateVaultOutput

=head1 ATTRIBUTES


=head2 Location => Str

The URI of the vault that was created.


=head2 _request_id => Str


=cut

