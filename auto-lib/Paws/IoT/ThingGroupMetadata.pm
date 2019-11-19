# Generated from default/object.tt
package Paws::IoT::ThingGroupMetadata;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_GroupNameAndArn/;
  has CreationDate => (is => 'ro', isa => Str);
  has ParentGroupName => (is => 'ro', isa => Str);
  has RootToParentThingGroups => (is => 'ro', isa => ArrayRef[IoT_GroupNameAndArn]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'ParentGroupName' => {
                                      'type' => 'Str'
                                    },
               'RootToParentThingGroups' => {
                                              'class' => 'Paws::IoT::GroupNameAndArn',
                                              'type' => 'ArrayRef[IoT_GroupNameAndArn]'
                                            }
             },
  'NameInRequest' => {
                       'RootToParentThingGroups' => 'rootToParentThingGroups',
                       'CreationDate' => 'creationDate',
                       'ParentGroupName' => 'parentGroupName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingGroupMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingGroupMetadata object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., RootToParentThingGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingGroupMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

Thing group metadata.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The UNIX timestamp of when the thing group was created.


=head2 ParentGroupName => Str

  The parent thing group name.


=head2 RootToParentThingGroups => ArrayRef[IoT_GroupNameAndArn]

  The root parent thing group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

