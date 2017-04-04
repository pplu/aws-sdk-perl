
package Paws::EC2::DescribeSecurityGroupReferencesResult;
  use Moose;
  has SecurityGroupReferenceSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SecurityGroupReference]', request_name => 'securityGroupReferenceSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSecurityGroupReferencesResult

=head1 ATTRIBUTES


=head2 SecurityGroupReferenceSet => ArrayRef[L<Paws::EC2::SecurityGroupReference>]

Information about the VPCs with the referencing security groups.


=head2 _request_id => Str


=cut

