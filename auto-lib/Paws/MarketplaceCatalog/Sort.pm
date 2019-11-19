# Generated from default/object.tt
package Paws::MarketplaceCatalog::Sort;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MarketplaceCatalog::Types qw//;
  has SortBy => (is => 'ro', isa => Str);
  has SortOrder => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SortBy' => {
                             'type' => 'Str'
                           },
               'SortOrder' => {
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

Paws::MarketplaceCatalog::Sort

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceCatalog::Sort object:

  $service_obj->Method(Att1 => { SortBy => $value, ..., SortOrder => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceCatalog::Sort object:

  $result = $service_obj->Method(...);
  $result->Att1->SortBy

=head1 DESCRIPTION

An object that contains two attributes, C<sortBy> and C<sortOrder>.

=head1 ATTRIBUTES


=head2 SortBy => Str

  For C<ListEntities>, supported attributes include C<LastModifiedDate>
(default), C<Visibility>, C<EntityId>, and C<Name>.

For C<ListChangeSets>, supported attributes include C<StartTime> and
C<EndTime>.


=head2 SortOrder => Str

  The sorting order. Can be C<ASCENDING> or C<DESCENDING>. The default
value is C<DESCENDING>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

