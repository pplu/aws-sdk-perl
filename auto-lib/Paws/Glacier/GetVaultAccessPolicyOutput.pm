
package Paws::Glacier::GetVaultAccessPolicyOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Policy');
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw/Glacier_VaultAccessPolicy/;
  has Policy => (is => 'ro', isa => Glacier_VaultAccessPolicy);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Policy' => 'policy'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Policy' => {
                             'class' => 'Paws::Glacier::VaultAccessPolicy',
                             'type' => 'Glacier_VaultAccessPolicy'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GetVaultAccessPolicyOutput

=head1 ATTRIBUTES


=head2 Policy => Glacier_VaultAccessPolicy

Contains the returned vault access policy as a JSON string.


=head2 _request_id => Str


=cut

