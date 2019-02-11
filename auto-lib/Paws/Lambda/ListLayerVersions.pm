
package Paws::Lambda::ListLayerVersions;
  use Moose;
  has CompatibleRuntime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'CompatibleRuntime');
  has LayerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LayerName', required => 1);
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker');
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxItems');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLayerVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-10-31/layers/{LayerName}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::ListLayerVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListLayerVersions - Arguments for method ListLayerVersions on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLayerVersions on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method ListLayerVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLayerVersions.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $ListLayerVersionsResponse = $lambda->ListLayerVersions(
      LayerName         => 'MyLayerName',
      CompatibleRuntime => 'nodejs',        # OPTIONAL
      Marker            => 'MyString',      # OPTIONAL
      MaxItems          => 1,               # OPTIONAL
    );

    # Results:
    my $LayerVersions = $ListLayerVersionsResponse->LayerVersions;
    my $NextMarker    = $ListLayerVersionsResponse->NextMarker;

    # Returns a L<Paws::Lambda::ListLayerVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/ListLayerVersions>

=head1 ATTRIBUTES


=head2 CompatibleRuntime => Str

A runtime identifier. For example, C<go1.x>.

Valid values are: C<"nodejs">, C<"nodejs4.3">, C<"nodejs6.10">, C<"nodejs8.10">, C<"java8">, C<"python2.7">, C<"python3.6">, C<"python3.7">, C<"dotnetcore1.0">, C<"dotnetcore2.0">, C<"dotnetcore2.1">, C<"nodejs4.3-edge">, C<"go1.x">, C<"ruby2.5">, C<"provided">

=head2 B<REQUIRED> LayerName => Str

The name or Amazon Resource Name (ARN) of the layer.



=head2 Marker => Str

A pagination token returned by a previous call.



=head2 MaxItems => Int

The maximum number of versions to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLayerVersions in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

