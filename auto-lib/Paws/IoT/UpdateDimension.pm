
package Paws::IoT::UpdateDimension;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has StringValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stringValues', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDimension');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dimensions/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateDimensionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateDimension - Arguments for method UpdateDimension on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDimension on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateDimension.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDimension.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateDimensionResponse = $iot->UpdateDimension(
      Name         => 'MyDimensionName',
      StringValues => [
        'MyDimensionStringValue', ...    # min: 1, max: 256
      ],

    );

    # Results:
    my $Arn              = $UpdateDimensionResponse->Arn;
    my $CreationDate     = $UpdateDimensionResponse->CreationDate;
    my $LastModifiedDate = $UpdateDimensionResponse->LastModifiedDate;
    my $Name             = $UpdateDimensionResponse->Name;
    my $StringValues     = $UpdateDimensionResponse->StringValues;
    my $Type             = $UpdateDimensionResponse->Type;

    # Returns a L<Paws::IoT::UpdateDimensionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateDimension>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

A unique identifier for the dimension. Choose something that describes
the type and value to make it easy to remember what it does.



=head2 B<REQUIRED> StringValues => ArrayRef[Str|Undef]

Specifies the value or list of values for the dimension. For
C<TOPIC_FILTER> dimensions, this is a pattern used to match the MQTT
topic (for example, "admin/#").




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDimension in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

