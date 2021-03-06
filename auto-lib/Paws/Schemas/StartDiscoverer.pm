
package Paws::Schemas::StartDiscoverer;
  use Moose;
  has DiscovererId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'discovererId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDiscoverer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/discoverers/id/{discovererId}/start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::StartDiscovererResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::StartDiscoverer - Arguments for method StartDiscoverer on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDiscoverer on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method StartDiscoverer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDiscoverer.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $StartDiscovererResponse = $schemas->StartDiscoverer(
      DiscovererId => 'My__string',

    );

    # Results:
    my $DiscovererId = $StartDiscovererResponse->DiscovererId;
    my $State        = $StartDiscovererResponse->State;

    # Returns a L<Paws::Schemas::StartDiscovererResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/StartDiscoverer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DiscovererId => Str

The ID of the discoverer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDiscoverer in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

