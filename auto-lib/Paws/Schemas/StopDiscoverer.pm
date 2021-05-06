
package Paws::Schemas::StopDiscoverer;
  use Moose;
  has DiscovererId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'discovererId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopDiscoverer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/discoverers/id/{discovererId}/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::StopDiscovererResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::StopDiscoverer - Arguments for method StopDiscoverer on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopDiscoverer on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method StopDiscoverer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopDiscoverer.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $StopDiscovererResponse = $schemas->StopDiscoverer(
      DiscovererId => 'My__string',

    );

    # Results:
    my $DiscovererId = $StopDiscovererResponse->DiscovererId;
    my $State        = $StopDiscovererResponse->State;

    # Returns a L<Paws::Schemas::StopDiscovererResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/StopDiscoverer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DiscovererId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopDiscoverer in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

