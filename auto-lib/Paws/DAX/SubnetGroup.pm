# Generated from default/object.tt
package Paws::DAX::SubnetGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DAX::Types qw/DAX_Subnet/;
  has Description => (is => 'ro', isa => Str);
  has SubnetGroupName => (is => 'ro', isa => Str);
  has Subnets => (is => 'ro', isa => ArrayRef[DAX_Subnet]);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcId' => {
                            'type' => 'Str'
                          },
               'Subnets' => {
                              'class' => 'Paws::DAX::Subnet',
                              'type' => 'ArrayRef[DAX_Subnet]'
                            },
               'SubnetGroupName' => {
                                      'type' => 'Str'
                                    },
               'Description' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::SubnetGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DAX::SubnetGroup object:

  $service_obj->Method(Att1 => { Description => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DAX::SubnetGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Represents the output of one of the following actions:

=over

=item *

I<CreateSubnetGroup>

=item *

I<ModifySubnetGroup>

=back


=head1 ATTRIBUTES


=head2 Description => Str

  The description of the subnet group.


=head2 SubnetGroupName => Str

  The name of the subnet group.


=head2 Subnets => ArrayRef[DAX_Subnet]

  A list of subnets associated with the subnet group.


=head2 VpcId => Str

  The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet
group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

