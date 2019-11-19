
package Paws::EC2::DescribeSecurityGroupReferencesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_SecurityGroupReference/;
  has SecurityGroupReferenceSet => (is => 'ro', isa => ArrayRef[EC2_SecurityGroupReference]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SecurityGroupReferenceSet' => {
                                                'class' => 'Paws::EC2::SecurityGroupReference',
                                                'type' => 'ArrayRef[EC2_SecurityGroupReference]'
                                              }
             },
  'NameInRequest' => {
                       'SecurityGroupReferenceSet' => 'securityGroupReferenceSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSecurityGroupReferencesResult

=head1 ATTRIBUTES


=head2 SecurityGroupReferenceSet => ArrayRef[EC2_SecurityGroupReference]

Information about the VPCs with the referencing security groups.


=head2 _request_id => Str


=cut

