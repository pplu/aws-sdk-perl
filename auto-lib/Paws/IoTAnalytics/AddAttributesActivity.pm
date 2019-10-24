# Generated from default/object.tt
package Paws::IoTAnalytics::AddAttributesActivity;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_AttributeNameMapping/;
  has Attributes => (is => 'ro', isa => IoTAnalytics_AttributeNameMapping, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Next => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::IoTAnalytics::AttributeNameMapping',
                                 'type' => 'IoTAnalytics_AttributeNameMapping'
                               },
               'Next' => {
                           'type' => 'Str'
                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Attributes' => 'attributes',
                       'Next' => 'next',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'Attributes' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::AddAttributesActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::AddAttributesActivity object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Next => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::AddAttributesActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

An activity that adds other attributes based on existing attributes in
the message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => IoTAnalytics_AttributeNameMapping

  A list of 1-50 "AttributeNameMapping" objects that map an existing
attribute to a new attribute.

The existing attributes remain in the message, so if you want to remove
the originals, use "RemoveAttributeActivity".


=head2 B<REQUIRED> Name => Str

  The name of the 'addAttributes' activity.


=head2 Next => Str

  The next activity in the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

