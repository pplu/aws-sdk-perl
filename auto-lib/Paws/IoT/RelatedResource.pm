# Generated from default/object.tt
package Paws::IoT::RelatedResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_ResourceIdentifier IoT_StringMap/;
  has AdditionalInfo => (is => 'ro', isa => IoT_StringMap);
  has ResourceIdentifier => (is => 'ro', isa => IoT_ResourceIdentifier);
  has ResourceType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceIdentifier' => {
                                         'type' => 'IoT_ResourceIdentifier',
                                         'class' => 'Paws::IoT::ResourceIdentifier'
                                       },
               'AdditionalInfo' => {
                                     'type' => 'IoT_StringMap',
                                     'class' => 'Paws::IoT::StringMap'
                                   },
               'ResourceType' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'ResourceIdentifier' => 'resourceIdentifier',
                       'AdditionalInfo' => 'additionalInfo',
                       'ResourceType' => 'resourceType'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RelatedResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::RelatedResource object:

  $service_obj->Method(Att1 => { AdditionalInfo => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::RelatedResource object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalInfo

=head1 DESCRIPTION

Information about a related resource.

=head1 ATTRIBUTES


=head2 AdditionalInfo => IoT_StringMap

  Other information about the resource.


=head2 ResourceIdentifier => IoT_ResourceIdentifier

  Information that identifies the resource.


=head2 ResourceType => Str

  The type of resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

