# Generated from default/object.tt
package Paws::IoT::NonCompliantResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_ResourceIdentifier IoT_StringMap/;
  has AdditionalInfo => (is => 'ro', isa => IoT_StringMap);
  has ResourceIdentifier => (is => 'ro', isa => IoT_ResourceIdentifier);
  has ResourceType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ResourceType' => 'resourceType',
                       'AdditionalInfo' => 'additionalInfo',
                       'ResourceIdentifier' => 'resourceIdentifier'
                     },
  'types' => {
               'AdditionalInfo' => {
                                     'class' => 'Paws::IoT::StringMap',
                                     'type' => 'IoT_StringMap'
                                   },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'ResourceIdentifier' => {
                                         'type' => 'IoT_ResourceIdentifier',
                                         'class' => 'Paws::IoT::ResourceIdentifier'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::NonCompliantResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::NonCompliantResource object:

  $service_obj->Method(Att1 => { AdditionalInfo => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::NonCompliantResource object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalInfo

=head1 DESCRIPTION

Information about the resource that was noncompliant with the audit
check.

=head1 ATTRIBUTES


=head2 AdditionalInfo => IoT_StringMap

  Other information about the noncompliant resource.


=head2 ResourceIdentifier => IoT_ResourceIdentifier

  Information that identifies the noncompliant resource.


=head2 ResourceType => Str

  The type of the noncompliant resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

