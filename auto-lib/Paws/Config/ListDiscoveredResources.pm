
package Paws::Config::ListDiscoveredResources {
  use Moose;
  has includeDeletedResources => (is => 'ro', isa => 'Bool');
  has limit => (is => 'ro', isa => 'Int');
  has nextToken => (is => 'ro', isa => 'Str');
  has resourceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has resourceName => (is => 'ro', isa => 'Str');
  has resourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDiscoveredResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::ListDiscoveredResourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListDiscoveredResources - Arguments for method ListDiscoveredResources on Paws::Config

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDiscoveredResources on the 
AWS Config service. Use the attributes of this class
as arguments to method ListDiscoveredResources.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ListDiscoveredResources.

As an example:

  $service_obj->ListDiscoveredResources(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 includeDeletedResources => Bool

  

Specifies whether AWS Config includes deleted resources in the results.
By default, deleted resources are not included.










=head2 limit => Int

  

The maximum number of resource identifiers returned on each page. The
default is 100. You cannot specify a limit greater than 100. If you
specify 0, AWS Config uses the default.










=head2 nextToken => Str

  

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.










=head2 resourceIds => ArrayRef[Str]

  

The IDs of only those resources that you want AWS Config to list in the
response. If you do not specify this parameter, AWS Config lists all
resources of the specified type that it has discovered.










=head2 resourceName => Str

  

The custom name of only those resources that you want AWS Config to
list in the response. If you do not specify this parameter, AWS Config
lists all resources of the specified type that it has discovered.










=head2 B<REQUIRED> resourceType => Str

  

The type of resources that you want AWS Config to list in the response.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDiscoveredResources in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

