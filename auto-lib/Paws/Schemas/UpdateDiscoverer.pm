
package Paws::Schemas::UpdateDiscoverer;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DiscovererId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'discovererId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDiscoverer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/discoverers/id/{discovererId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::UpdateDiscovererResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::UpdateDiscoverer - Arguments for method UpdateDiscoverer on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDiscoverer on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method UpdateDiscoverer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDiscoverer.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $UpdateDiscovererResponse = $schemas->UpdateDiscoverer(
      DiscovererId => 'My__string',
      Description  => 'My__stringMin0Max256',    # OPTIONAL
    );

    # Results:
    my $Description   = $UpdateDiscovererResponse->Description;
    my $DiscovererArn = $UpdateDiscovererResponse->DiscovererArn;
    my $DiscovererId  = $UpdateDiscovererResponse->DiscovererId;
    my $SourceArn     = $UpdateDiscovererResponse->SourceArn;
    my $State         = $UpdateDiscovererResponse->State;
    my $Tags          = $UpdateDiscovererResponse->Tags;

    # Returns a L<Paws::Schemas::UpdateDiscovererResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/UpdateDiscoverer>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the discoverer to update.



=head2 B<REQUIRED> DiscovererId => Str

The ID of the discoverer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDiscoverer in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

