# Generated from default/object.tt
package Paws::RedShift::ClusterSecurityGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_Tag RedShift_IPRange RedShift_EC2SecurityGroup/;
  has ClusterSecurityGroupName => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has EC2SecurityGroups => (is => 'ro', isa => ArrayRef[RedShift_EC2SecurityGroup]);
  has IPRanges => (is => 'ro', isa => ArrayRef[RedShift_IPRange]);
  has Tags => (is => 'ro', isa => ArrayRef[RedShift_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IPRanges' => {
                               'class' => 'Paws::RedShift::IPRange',
                               'type' => 'ArrayRef[RedShift_IPRange]'
                             },
               'ClusterSecurityGroupName' => {
                                               'type' => 'Str'
                                             },
               'Tags' => {
                           'class' => 'Paws::RedShift::Tag',
                           'type' => 'ArrayRef[RedShift_Tag]'
                         },
               'EC2SecurityGroups' => {
                                        'class' => 'Paws::RedShift::EC2SecurityGroup',
                                        'type' => 'ArrayRef[RedShift_EC2SecurityGroup]'
                                      },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'IPRanges' => 'IPRange',
                       'Tags' => 'Tag',
                       'EC2SecurityGroups' => 'EC2SecurityGroup'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterSecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ClusterSecurityGroup object:

  $service_obj->Method(Att1 => { ClusterSecurityGroupName => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ClusterSecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterSecurityGroupName

=head1 DESCRIPTION

Describes a security group.

=head1 ATTRIBUTES


=head2 ClusterSecurityGroupName => Str

  The name of the cluster security group to which the operation was
applied.


=head2 Description => Str

  A description of the security group.


=head2 EC2SecurityGroups => ArrayRef[RedShift_EC2SecurityGroup]

  A list of EC2 security groups that are permitted to access clusters
associated with this cluster security group.


=head2 IPRanges => ArrayRef[RedShift_IPRange]

  A list of IP ranges (CIDR blocks) that are permitted to access clusters
associated with this cluster security group.


=head2 Tags => ArrayRef[RedShift_Tag]

  The list of tags for the cluster security group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

