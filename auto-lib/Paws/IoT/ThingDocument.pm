# Generated from default/object.tt
package Paws::IoT::ThingDocument;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw/IoT_Attributes IoT_ThingConnectivity/;
  has Attributes => (is => 'ro', isa => IoT_Attributes);
  has Connectivity => (is => 'ro', isa => IoT_ThingConnectivity);
  has Shadow => (is => 'ro', isa => Str);
  has ThingGroupNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ThingId => (is => 'ro', isa => Str);
  has ThingName => (is => 'ro', isa => Str);
  has ThingTypeName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::IoT::Attributes',
                                 'type' => 'IoT_Attributes'
                               },
               'Connectivity' => {
                                   'class' => 'Paws::IoT::ThingConnectivity',
                                   'type' => 'IoT_ThingConnectivity'
                                 },
               'ThingGroupNames' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'ThingId' => {
                              'type' => 'Str'
                            },
               'ThingTypeName' => {
                                    'type' => 'Str'
                                  },
               'ThingName' => {
                                'type' => 'Str'
                              },
               'Shadow' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Connectivity' => 'connectivity',
                       'Attributes' => 'attributes',
                       'ThingId' => 'thingId',
                       'ThingGroupNames' => 'thingGroupNames',
                       'ThingTypeName' => 'thingTypeName',
                       'ThingName' => 'thingName',
                       'Shadow' => 'shadow'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingDocument

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingDocument object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., ThingTypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingDocument object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

The thing search index document.

=head1 ATTRIBUTES


=head2 Attributes => IoT_Attributes

  The attributes.


=head2 Connectivity => IoT_ThingConnectivity

  Indicates whether the thing is connected to the AWS IoT service.


=head2 Shadow => Str

  The shadow.


=head2 ThingGroupNames => ArrayRef[Str|Undef]

  Thing group names.


=head2 ThingId => Str

  The thing ID.


=head2 ThingName => Str

  The thing name.


=head2 ThingTypeName => Str

  The thing type name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

