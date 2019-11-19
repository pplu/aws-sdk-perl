# Generated from default/object.tt
package Paws::Config::ResourceKey;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has ResourceId => (is => 'ro', isa => Str, required => 1);
  has ResourceType => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceId' => 1,
                    'ResourceType' => 1
                  },
  'NameInRequest' => {
                       'ResourceId' => 'resourceId',
                       'ResourceType' => 'resourceType'
                     },
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'ResourceType' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ResourceKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ResourceKey object:

  $service_obj->Method(Att1 => { ResourceId => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ResourceKey object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceId

=head1 DESCRIPTION

The details that identify a resource within AWS Config, including the
resource type and resource ID.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

  The ID of the resource (for example., sg-xxxxxx).


=head2 B<REQUIRED> ResourceType => Str

  The resource type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

