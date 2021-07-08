
package Paws::IoT::CreateDimension;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has StringValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stringValues', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDimension');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dimensions/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateDimensionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateDimension - Arguments for method CreateDimension on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDimension on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateDimension.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDimension.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateDimensionResponse = $iot->CreateDimension(
      ClientRequestToken => 'MyClientRequestToken',
      Name               => 'MyDimensionName',
      StringValues       => [
        'MyDimensionStringValue', ...    # min: 1, max: 256
      ],
      Type => 'TOPIC_FILTER',
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn  = $CreateDimensionResponse->Arn;
    my $Name = $CreateDimensionResponse->Name;

    # Returns a L<Paws::IoT::CreateDimensionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateDimension>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

Each dimension must have a unique client request token. If you try to
create a new dimension with the same token as a dimension that already
exists, an exception occurs. If you omit this value, AWS SDKs will
automatically generate a unique client request.



=head2 B<REQUIRED> Name => Str

A unique identifier for the dimension. Choose something that describes
the type and value to make it easy to remember what it does.



=head2 B<REQUIRED> StringValues => ArrayRef[Str|Undef]

Specifies the value or list of values for the dimension. For
C<TOPIC_FILTER> dimensions, this is a pattern used to match the MQTT
topic (for example, "admin/#").



=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata that can be used to manage the dimension.



=head2 B<REQUIRED> Type => Str

Specifies the type of dimension. Supported types: C<TOPIC_FILTER.>

Valid values are: C<"TOPIC_FILTER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDimension in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

