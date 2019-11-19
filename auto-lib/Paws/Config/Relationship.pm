# Generated from default/object.tt
package Paws::Config::Relationship;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has RelationshipName => (is => 'ro', isa => Str);
  has ResourceId => (is => 'ro', isa => Str);
  has ResourceName => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RelationshipName' => {
                                       'type' => 'Str'
                                     },
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'ResourceName' => {
                                   'type' => 'Str'
                                 },
               'ResourceType' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'ResourceType' => 'resourceType',
                       'ResourceName' => 'resourceName',
                       'ResourceId' => 'resourceId',
                       'RelationshipName' => 'relationshipName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::Relationship

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::Relationship object:

  $service_obj->Method(Att1 => { RelationshipName => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::Relationship object:

  $result = $service_obj->Method(...);
  $result->Att1->RelationshipName

=head1 DESCRIPTION

The relationship of the related resource to the main resource.

=head1 ATTRIBUTES


=head2 RelationshipName => Str

  The type of relationship with the related resource.


=head2 ResourceId => Str

  The ID of the related resource (for example, C<sg-xxxxxx>).


=head2 ResourceName => Str

  The custom name of the related resource, if available.


=head2 ResourceType => Str

  The resource type of the related resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

