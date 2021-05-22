
package Paws::Schemas::GetDiscoveredSchema;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDiscoveredSchema');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/discover');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::GetDiscoveredSchemaResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::GetDiscoveredSchema - Arguments for method GetDiscoveredSchema on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDiscoveredSchema on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method GetDiscoveredSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDiscoveredSchema.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $GetDiscoveredSchemaResponse = $schemas->GetDiscoveredSchema(
      Events => [
        'MyGetDiscoveredSchemaVersionItemInput', ...    # min: 1, max: 100000
      ],
      Type => 'OpenApi3',

    );

    # Results:
    my $Content = $GetDiscoveredSchemaResponse->Content;

    # Returns a L<Paws::Schemas::GetDiscoveredSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/GetDiscoveredSchema>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[Str|Undef]

An array of strings where each string is a JSON event. These are the
events that were used to generate the schema. The array includes a
single type of event and has a maximum size of 10 events.



=head2 B<REQUIRED> Type => Str

The type of event.

Valid values are: C<"OpenApi3">, C<"JSONSchemaDraft4">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDiscoveredSchema in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

