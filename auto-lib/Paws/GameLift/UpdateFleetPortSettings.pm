
package Paws::GameLift::UpdateFleetPortSettings;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has InboundPermissionAuthorizations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');
  has InboundPermissionRevocations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFleetPortSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateFleetPortSettingsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateFleetPortSettings - Arguments for method UpdateFleetPortSettings on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFleetPortSettings on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateFleetPortSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFleetPortSettings.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateFleetPortSettingsOutput = $gamelift->UpdateFleetPortSettings(
      FleetId                         => 'MyFleetId',
      InboundPermissionAuthorizations => [
        {
          FromPort => 1,                    # min: 1, max: 60000
          IpRange  => 'MyNonBlankString',
          Protocol => 'TCP',                # values: TCP, UDP
          ToPort   => 1,                    # min: 1, max: 60000

        },
        ...
      ],                                    # OPTIONAL
      InboundPermissionRevocations => [
        {
          FromPort => 1,                    # min: 1, max: 60000
          IpRange  => 'MyNonBlankString',
          Protocol => 'TCP',                # values: TCP, UDP
          ToPort   => 1,                    # min: 1, max: 60000

        },
        ...
      ],                                    # OPTIONAL
    );

    # Results:
    my $FleetId = $UpdateFleetPortSettingsOutput->FleetId;

    # Returns a L<Paws::GameLift::UpdateFleetPortSettingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateFleetPortSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet to update port settings for.



=head2 InboundPermissionAuthorizations => ArrayRef[L<Paws::GameLift::IpPermission>]

Collection of port settings to be added to the fleet record.



=head2 InboundPermissionRevocations => ArrayRef[L<Paws::GameLift::IpPermission>]

Collection of port settings to be removed from the fleet record.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFleetPortSettings in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

