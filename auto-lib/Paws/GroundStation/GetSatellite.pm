
package Paws::GroundStation::GetSatellite;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw//;
  has SatelliteId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetSatellite');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/satellite/{satelliteId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::GetSatelliteResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SatelliteId' => 1
                  },
  'types' => {
               'SatelliteId' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInURI' => {
                    'SatelliteId' => 'satelliteId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetSatellite - Arguments for method GetSatellite on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSatellite on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method GetSatellite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSatellite.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $GetSatelliteResponse = $groundstation->GetSatellite(
      SatelliteId => 'MyString',

    );

    # Results:
    my $DateCreated      = $GetSatelliteResponse->DateCreated;
    my $LastUpdated      = $GetSatelliteResponse->LastUpdated;
    my $NoradSatelliteID = $GetSatelliteResponse->NoradSatelliteID;
    my $SatelliteArn     = $GetSatelliteResponse->SatelliteArn;
    my $SatelliteId      = $GetSatelliteResponse->SatelliteId;
    my $Tags             = $GetSatelliteResponse->Tags;

    # Returns a L<Paws::GroundStation::GetSatelliteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/GetSatellite>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SatelliteId => Str

UUID of a satellite.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSatellite in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

