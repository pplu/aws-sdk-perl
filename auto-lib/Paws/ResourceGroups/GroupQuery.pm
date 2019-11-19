# Generated from default/object.tt
package Paws::ResourceGroups::GroupQuery;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ResourceGroups::Types qw/ResourceGroups_ResourceQuery/;
  has GroupName => (is => 'ro', isa => Str, required => 1);
  has ResourceQuery => (is => 'ro', isa => ResourceGroups_ResourceQuery, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupName' => {
                                'type' => 'Str'
                              },
               'ResourceQuery' => {
                                    'class' => 'Paws::ResourceGroups::ResourceQuery',
                                    'type' => 'ResourceGroups_ResourceQuery'
                                  }
             },
  'IsRequired' => {
                    'GroupName' => 1,
                    'ResourceQuery' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GroupQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceGroups::GroupQuery object:

  $service_obj->Method(Att1 => { GroupName => $value, ..., ResourceQuery => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceGroups::GroupQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupName

=head1 DESCRIPTION

The underlying resource query of a resource group. Resources that match
query results are part of the group.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

  The name of a resource group that is associated with a specific
resource query.


=head2 B<REQUIRED> ResourceQuery => ResourceGroups_ResourceQuery

  The resource query which determines which AWS resources are members of
the associated resource group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

