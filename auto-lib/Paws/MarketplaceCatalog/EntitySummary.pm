# Generated from default/object.tt
package Paws::MarketplaceCatalog::EntitySummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MarketplaceCatalog::Types qw//;
  has EntityArn => (is => 'ro', isa => Str);
  has EntityId => (is => 'ro', isa => Str);
  has EntityType => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Visibility => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Visibility' => {
                                 'type' => 'Str'
                               },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'EntityType' => {
                                 'type' => 'Str'
                               },
               'EntityId' => {
                               'type' => 'Str'
                             },
               'EntityArn' => {
                                'type' => 'Str'
                              },
               'Name' => {
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

Paws::MarketplaceCatalog::EntitySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceCatalog::EntitySummary object:

  $service_obj->Method(Att1 => { EntityArn => $value, ..., Visibility => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceCatalog::EntitySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->EntityArn

=head1 DESCRIPTION

This object is a container for common summary information about the
entity. The summary doesn't contain the whole entity structure, but it
does contain information common across all entities.

=head1 ATTRIBUTES


=head2 EntityArn => Str

  The ARN associated with the unique identifier for the entity.


=head2 EntityId => Str

  The unique identifier for the entity.


=head2 EntityType => Str

  The type of the entity.


=head2 LastModifiedDate => Str

  The last time the entity was published, using ISO 8601 format
(2018-02-27T13:45:22Z).


=head2 Name => Str

  The name for the entity. This value is not unique. It is defined by the
provider.


=head2 Visibility => Str

  The visibility status of the entity to subscribers. This value can be
C<Public> (everyone can view the entity), C<Limited> (the entity is
visible to limited accounts only), or C<Restricted> (the entity was
published and then unpublished and only existing subscribers can view
it).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

