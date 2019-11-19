package Paws::EC2::NetworkAcl;
  use Moo;  use Types::Standard qw/ArrayRef Bool Str/;
  use Paws::EC2::Types qw/EC2_Tag EC2_NetworkAclAssociation EC2_NetworkAclEntry/;
  has Associations => (is => 'ro', isa => ArrayRef[EC2_NetworkAclAssociation]);
  has Entries => (is => 'ro', isa => ArrayRef[EC2_NetworkAclEntry]);
  has IsDefault => (is => 'ro', isa => Bool);
  has NetworkAclId => (is => 'ro', isa => Str);
  has OwnerId => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Entries' => 'entrySet',
                       'Associations' => 'associationSet',
                       'NetworkAclId' => 'networkAclId',
                       'VpcId' => 'vpcId',
                       'IsDefault' => 'default',
                       'Tags' => 'tagSet',
                       'OwnerId' => 'ownerId'
                     },
  'types' => {
               'IsDefault' => {
                                'type' => 'Bool'
                              },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'NetworkAclId' => {
                                   'type' => 'Str'
                                 },
               'Associations' => {
                                   'class' => 'Paws::EC2::NetworkAclAssociation',
                                   'type' => 'ArrayRef[EC2_NetworkAclAssociation]'
                                 },
               'Entries' => {
                              'class' => 'Paws::EC2::NetworkAclEntry',
                              'type' => 'ArrayRef[EC2_NetworkAclEntry]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkAcl

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkAcl object:

  $service_obj->Method(Att1 => { Associations => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkAcl object:

  $result = $service_obj->Method(...);
  $result->Att1->Associations

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[EC2_NetworkAclAssociation]

  Any associations between the network ACL and one or more subnets


=head2 Entries => ArrayRef[EC2_NetworkAclEntry]

  One or more entries (rules) in the network ACL.


=head2 IsDefault => Bool

  Indicates whether this is the default network ACL for the VPC.


=head2 NetworkAclId => Str

  The ID of the network ACL.


=head2 OwnerId => Str

  The ID of the AWS account that owns the network ACL.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the network ACL.


=head2 VpcId => Str

  The ID of the VPC for the network ACL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
