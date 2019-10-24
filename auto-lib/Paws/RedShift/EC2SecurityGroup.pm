# Generated from default/object.tt
package Paws::RedShift::EC2SecurityGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_Tag/;
  has EC2SecurityGroupName => (is => 'ro', isa => Str);
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[RedShift_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'Tags' => {
                           'class' => 'Paws::RedShift::Tag',
                           'type' => 'ArrayRef[RedShift_Tag]'
                         },
               'EC2SecurityGroupOwnerId' => {
                                              'type' => 'Str'
                                            },
               'EC2SecurityGroupName' => {
                                           'type' => 'Str'
                                         }
             },
  'NameInRequest' => {
                       'Tags' => 'Tag'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EC2SecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::EC2SecurityGroup object:

  $service_obj->Method(Att1 => { EC2SecurityGroupName => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::EC2SecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->EC2SecurityGroupName

=head1 DESCRIPTION

Describes an Amazon EC2 security group.

=head1 ATTRIBUTES


=head2 EC2SecurityGroupName => Str

  The name of the EC2 Security Group.


=head2 EC2SecurityGroupOwnerId => Str

  The AWS ID of the owner of the EC2 security group specified in the
C<EC2SecurityGroupName> field.


=head2 Status => Str

  The status of the EC2 security group.


=head2 Tags => ArrayRef[RedShift_Tag]

  The list of tags for the EC2 security group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

