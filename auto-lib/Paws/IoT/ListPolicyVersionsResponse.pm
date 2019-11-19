
package Paws::IoT::ListPolicyVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_PolicyVersion/;
  has PolicyVersions => (is => 'ro', isa => ArrayRef[IoT_PolicyVersion]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PolicyVersions' => {
                                     'class' => 'Paws::IoT::PolicyVersion',
                                     'type' => 'ArrayRef[IoT_PolicyVersion]'
                                   }
             },
  'NameInRequest' => {
                       'PolicyVersions' => 'policyVersions'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPolicyVersionsResponse

=head1 ATTRIBUTES


=head2 PolicyVersions => ArrayRef[IoT_PolicyVersion]

The policy versions.


=head2 _request_id => Str


=cut

