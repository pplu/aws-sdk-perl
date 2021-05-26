
package Paws::Schemas::CreateDiscoverer;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Schemas::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDiscoverer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/discoverers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::CreateDiscovererResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::CreateDiscoverer - Arguments for method CreateDiscoverer on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDiscoverer on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method CreateDiscoverer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDiscoverer.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $CreateDiscovererResponse = $schemas->CreateDiscoverer(
      SourceArn   => 'My__stringMin20Max1600',
      Description => 'My__stringMin0Max256',               # OPTIONAL
      Tags        => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Description   = $CreateDiscovererResponse->Description;
    my $DiscovererArn = $CreateDiscovererResponse->DiscovererArn;
    my $DiscovererId  = $CreateDiscovererResponse->DiscovererId;
    my $SourceArn     = $CreateDiscovererResponse->SourceArn;
    my $State         = $CreateDiscovererResponse->State;
    my $Tags          = $CreateDiscovererResponse->Tags;

    # Returns a L<Paws::Schemas::CreateDiscovererResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/CreateDiscoverer>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the discoverer.



=head2 B<REQUIRED> SourceArn => Str

The ARN of the event bus.



=head2 Tags => L<Paws::Schemas::Tags>

Tags associated with the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDiscoverer in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

