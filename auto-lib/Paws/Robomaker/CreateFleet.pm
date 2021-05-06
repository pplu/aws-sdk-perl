
package Paws::Robomaker::CreateFleet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFleet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createFleet');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::CreateFleetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateFleet - Arguments for method CreateFleet on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFleet on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFleet.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateFleetResponse = $robomaker->CreateFleet(
      Name => 'MyName',
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn       = $CreateFleetResponse->Arn;
    my $CreatedAt = $CreateFleetResponse->CreatedAt;
    my $Name      = $CreateFleetResponse->Name;
    my $Tags      = $CreateFleetResponse->Tags;

    # Returns a L<Paws::Robomaker::CreateFleetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateFleet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the fleet.



=head2 Tags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

