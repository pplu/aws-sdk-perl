# Generated from default/object.tt
package Paws::IoT::ThingIndexingConfiguration;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::IoT::Types qw/IoT_Field/;
  has CustomFields => (is => 'ro', isa => ArrayRef[IoT_Field]);
  has ManagedFields => (is => 'ro', isa => ArrayRef[IoT_Field]);
  has ThingConnectivityIndexingMode => (is => 'ro', isa => Str);
  has ThingIndexingMode => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingConnectivityIndexingMode' => {
                                                    'type' => 'Str'
                                                  },
               'CustomFields' => {
                                   'type' => 'ArrayRef[IoT_Field]',
                                   'class' => 'Paws::IoT::Field'
                                 },
               'ManagedFields' => {
                                    'class' => 'Paws::IoT::Field',
                                    'type' => 'ArrayRef[IoT_Field]'
                                  },
               'ThingIndexingMode' => {
                                        'type' => 'Str'
                                      }
             },
  'IsRequired' => {
                    'ThingIndexingMode' => 1
                  },
  'NameInRequest' => {
                       'ThingConnectivityIndexingMode' => 'thingConnectivityIndexingMode',
                       'CustomFields' => 'customFields',
                       'ThingIndexingMode' => 'thingIndexingMode',
                       'ManagedFields' => 'managedFields'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingIndexingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingIndexingConfiguration object:

  $service_obj->Method(Att1 => { CustomFields => $value, ..., ThingIndexingMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingIndexingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomFields

=head1 DESCRIPTION

The thing indexing configuration. For more information, see Managing
Thing Indexing
(https://docs.aws.amazon.com/iot/latest/developerguide/managing-index.html).

=head1 ATTRIBUTES


=head2 CustomFields => ArrayRef[IoT_Field]

  A list of thing fields to index. This list cannot contain any managed
fields. Use the GetIndexingConfiguration API to get a list of managed
fields.


=head2 ManagedFields => ArrayRef[IoT_Field]

  A list of automatically indexed thing fields.


=head2 ThingConnectivityIndexingMode => Str

  Thing connectivity indexing mode. Valid values are:

=over

=item *

STATUS E<ndash> Your thing index contains connectivity status. To
enable thing connectivity indexing, thingIndexMode must not be set to
OFF.

=item *

OFF - Thing connectivity status indexing is disabled.

=back



=head2 B<REQUIRED> ThingIndexingMode => Str

  Thing indexing mode. Valid values are:

=over

=item *

REGISTRY E<ndash> Your thing index contains registry data only.

=item *

REGISTRY_AND_SHADOW - Your thing index contains registry and shadow
data.

=item *

OFF - Thing indexing is disabled.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

