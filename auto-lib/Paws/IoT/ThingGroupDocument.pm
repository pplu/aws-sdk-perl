# Generated from default/object.tt
package Paws::IoT::ThingGroupDocument;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::IoT::Types qw/IoT_Attributes/;
  has Attributes => (is => 'ro', isa => IoT_Attributes);
  has ParentGroupNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ThingGroupDescription => (is => 'ro', isa => Str);
  has ThingGroupId => (is => 'ro', isa => Str);
  has ThingGroupName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingGroupName' => {
                                     'type' => 'Str'
                                   },
               'Attributes' => {
                                 'class' => 'Paws::IoT::Attributes',
                                 'type' => 'IoT_Attributes'
                               },
               'ThingGroupId' => {
                                   'type' => 'Str'
                                 },
               'ThingGroupDescription' => {
                                            'type' => 'Str'
                                          },
               'ParentGroupNames' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             },
  'NameInRequest' => {
                       'ThingGroupName' => 'thingGroupName',
                       'Attributes' => 'attributes',
                       'ThingGroupId' => 'thingGroupId',
                       'ThingGroupDescription' => 'thingGroupDescription',
                       'ParentGroupNames' => 'parentGroupNames'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingGroupDocument

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingGroupDocument object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., ThingGroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingGroupDocument object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

The thing group search index document.

=head1 ATTRIBUTES


=head2 Attributes => IoT_Attributes

  The thing group attributes.


=head2 ParentGroupNames => ArrayRef[Str|Undef]

  Parent group names.


=head2 ThingGroupDescription => Str

  The thing group description.


=head2 ThingGroupId => Str

  The thing group ID.


=head2 ThingGroupName => Str

  The thing group name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

