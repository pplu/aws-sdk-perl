
package Paws::NimbleStudio::GetStudioComponent;
  use Moose;
  has StudioComponentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioComponentId', required => 1);
  has StudioId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStudioComponent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios/{studioId}/studio-components/{studioComponentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::GetStudioComponentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::GetStudioComponent - Arguments for method GetStudioComponent on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStudioComponent on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method GetStudioComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStudioComponent.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $GetStudioComponentResponse = $nimble->GetStudioComponent(
      StudioComponentId => 'My__string',
      StudioId          => 'My__string',

    );

    # Results:
    my $StudioComponent = $GetStudioComponentResponse->StudioComponent;

    # Returns a L<Paws::NimbleStudio::GetStudioComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/GetStudioComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StudioComponentId => Str

The studio component ID.



=head2 B<REQUIRED> StudioId => Str

The studio ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStudioComponent in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

