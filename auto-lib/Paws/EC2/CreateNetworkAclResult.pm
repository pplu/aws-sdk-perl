
package Paws::EC2::CreateNetworkAclResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_NetworkAcl/;
  has NetworkAcl => (is => 'ro', isa => EC2_NetworkAcl);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkAcl' => {
                                 'class' => 'Paws::EC2::NetworkAcl',
                                 'type' => 'EC2_NetworkAcl'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NetworkAcl' => 'networkAcl'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkAclResult

=head1 ATTRIBUTES


=head2 NetworkAcl => EC2_NetworkAcl

Information about the network ACL.


=head2 _request_id => Str


=cut

