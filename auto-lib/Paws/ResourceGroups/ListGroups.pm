
package Paws::ResourceGroups::ListGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::ListGroupsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ListGroups - Arguments for method ListGroups on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroups on the 
AWS Resource Groups service. Use the attributes of this class
as arguments to method ListGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroups.

As an example:

  $service_obj->ListGroups(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of resource group results that are returned by
ListGroups in paginated output. By default, this number is 50.



=head2 NextToken => Str

The NextToken value that is returned in a paginated C<ListGroups>
request. To get the next page of results, run the call again, add the
NextToken parameter, and specify the NextToken value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroups in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

