
package Paws::GroundStation::DeleteConfig;
  use Moose;
  has ConfigId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configId', required => 1);
  has ConfigType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/config/{configType}/{configId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::ConfigIdResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DeleteConfig - Arguments for method DeleteConfig on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConfig on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method DeleteConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConfig.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $ConfigIdResponse = $groundstation->DeleteConfig(
      ConfigId   => 'MyString',
      ConfigType => 'antenna-downlink',

    );

    # Results:
    my $ConfigArn  = $ConfigIdResponse->ConfigArn;
    my $ConfigId   = $ConfigIdResponse->ConfigId;
    my $ConfigType = $ConfigIdResponse->ConfigType;

    # Returns a L<Paws::GroundStation::ConfigIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/DeleteConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigId => Str

UUID of a C<Config>.



=head2 B<REQUIRED> ConfigType => Str

Type of a C<Config>.

Valid values are: C<"antenna-downlink">, C<"antenna-downlink-demod-decode">, C<"antenna-uplink">, C<"dataflow-endpoint">, C<"tracking">, C<"uplink-echo">, C<"s3-recording">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConfig in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

