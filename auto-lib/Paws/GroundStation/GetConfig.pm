
package Paws::GroundStation::GetConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw//;
  has ConfigId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ConfigType => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetConfig');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/config/{configType}/{configId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::GetConfigResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigType' => {
                                 'type' => 'Str'
                               },
               'ConfigId' => {
                               'type' => 'Str'
                             }
             },
  'ParamInURI' => {
                    'ConfigType' => 'configType',
                    'ConfigId' => 'configId'
                  },
  'IsRequired' => {
                    'ConfigType' => 1,
                    'ConfigId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetConfig - Arguments for method GetConfig on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfig on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method GetConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfig.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $GetConfigResponse = $groundstation->GetConfig(
      ConfigId   => 'MyString',
      ConfigType => 'antenna-downlink',

    );

    # Results:
    my $ConfigArn  = $GetConfigResponse->ConfigArn;
    my $ConfigData = $GetConfigResponse->ConfigData;
    my $ConfigId   = $GetConfigResponse->ConfigId;
    my $ConfigType = $GetConfigResponse->ConfigType;
    my $Name       = $GetConfigResponse->Name;
    my $Tags       = $GetConfigResponse->Tags;

    # Returns a L<Paws::GroundStation::GetConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/GetConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigId => Str

UUID of a C<Config>.



=head2 B<REQUIRED> ConfigType => Str

Type of a C<Config>.

Valid values are: C<"antenna-downlink">, C<"antenna-downlink-demod-decode">, C<"antenna-uplink">, C<"dataflow-endpoint">, C<"tracking">, C<"uplink-echo">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfig in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

