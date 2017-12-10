package Paws::ResourceGroups::ResourceQuery;
  use Moose;
  has Query => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ResourceQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceGroups::ResourceQuery object:

  $service_obj->Method(Att1 => { Query => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceGroups::ResourceQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->Query

=head1 DESCRIPTION

The query that is used to define a resource group or a search for
resources.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Query => Str

  The query that defines a group or a search.


=head2 B<REQUIRED> Type => Str

  The type of the query. The valid value in this release is
C<TAG_FILTERS_1_0>.

I<C<TAG_FILTERS_1_0:> > A JSON syntax that lets you specify a
collection of simple tag filters for resource types and tags, as
supported by the AWS Tagging API GetResources operation. When more than
one element is present, only resources that match all filters are part
of the result. If a filter specifies more than one value for a key, a
resource matches the filter if its tag value matches any of the
specified values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

