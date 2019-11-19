# Generated from default/object.tt
package Paws::MarketplaceCatalog::Filter;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::MarketplaceCatalog::Types qw//;
  has Name => (is => 'ro', isa => Str);
  has ValueList => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ValueList' => {
                                'type' => 'ArrayRef[Str|Undef]'
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

Paws::MarketplaceCatalog::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceCatalog::Filter object:

  $service_obj->Method(Att1 => { Name => $value, ..., ValueList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceCatalog::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A filter object, used to optionally filter results from calls to the
C<ListEntities> and C<ListChangeSets> actions.

=head1 ATTRIBUTES


=head2 Name => Str

  For C<ListEntities>, the supported value for this is an C<EntityId>.

For C<ListChangeSets>, the supported values are as follows:


=head2 ValueList => ArrayRef[Str|Undef]

  C<ListEntities> - This is a list of unique C<EntityId>s.

C<ListChangeSets> - The supported filter names and associated
C<ValueList>s is as follows:

=over

=item *

C<ChangeSetName> - The supported C<ValueList> is a list of non-unique
C<ChangeSetName>s. These are defined when you call the
C<StartChangeSet> action.

=item *

C<Status> - The supported C<ValueList> is a list of statuses for all
change set requests.

=item *

C<EntityId> - The supported C<ValueList> is a list of unique
C<EntityId>s.

=item *

C<BeforeStartTime> - The supported C<ValueList> is a list of all change
sets that started before the filter value.

=item *

C<AfterStartTime> - The supported C<ValueList> is a list of all change
sets that started after the filter value.

=item *

C<BeforeEndTime> - The supported C<ValueList> is a list of all change
sets that ended before the filter value.

=item *

C<AfterEndTime> - The supported C<ValueList> is a list of all change
sets that ended after the filter value.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

