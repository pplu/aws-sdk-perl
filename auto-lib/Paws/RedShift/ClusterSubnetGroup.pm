package Paws::RedShift::ClusterSubnetGroup;
  use Moose;
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Subnet]', request_name => 'Subnet', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]', request_name => 'Tag', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterSubnetGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ClusterSubnetGroup object:

  $service_obj->Method(Att1 => { ClusterSubnetGroupName => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ClusterSubnetGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterSubnetGroupName

=head1 DESCRIPTION

Describes a subnet group.

=head1 ATTRIBUTES


=head2 ClusterSubnetGroupName => Str

  The name of the cluster subnet group.


=head2 Description => Str

  The description of the cluster subnet group.


=head2 SubnetGroupStatus => Str

  The status of the cluster subnet group. Possible values are
C<Complete>, C<Incomplete> and C<Invalid>.


=head2 Subnets => ArrayRef[L<Paws::RedShift::Subnet>]

  A list of the VPC Subnet elements.


=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

  The list of tags for the cluster subnet group.


=head2 VpcId => Str

  The VPC ID of the cluster subnet group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

