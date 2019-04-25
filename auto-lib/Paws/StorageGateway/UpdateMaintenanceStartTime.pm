
package Paws::StorageGateway::UpdateMaintenanceStartTime;
  use Moose;
  has DayOfWeek => (is => 'ro', isa => 'Int', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has HourOfDay => (is => 'ro', isa => 'Int', required => 1);
  has MinuteOfHour => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceStartTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateMaintenanceStartTimeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateMaintenanceStartTime - Arguments for method UpdateMaintenanceStartTime on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMaintenanceStartTime on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateMaintenanceStartTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMaintenanceStartTime.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To update a gateway's maintenance start time
    # Updates a gateway's weekly maintenance start time information, including
    # day and time of the week. The maintenance time is in your gateway's time
    # zone.
    my $UpdateMaintenanceStartTimeOutput =
      $storagegateway->UpdateMaintenanceStartTime(
      {
        'DayOfWeek' => 2,
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B',
        'HourOfDay'    => 0,
        'MinuteOfHour' => 30
      }
      );

    # Results:
    my $GatewayARN = $UpdateMaintenanceStartTimeOutput->GatewayARN;

   # Returns a L<Paws::StorageGateway::UpdateMaintenanceStartTimeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateMaintenanceStartTime>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DayOfWeek => Int

The maintenance start time day of the week represented as an ordinal
number from 0 to 6, where 0 represents Sunday and 6 Saturday.



=head2 B<REQUIRED> GatewayARN => Str





=head2 B<REQUIRED> HourOfDay => Int

The hour component of the maintenance start time represented as I<hh>,
where I<hh> is the hour (00 to 23). The hour of the day is in the time
zone of the gateway.



=head2 B<REQUIRED> MinuteOfHour => Int

The minute component of the maintenance start time represented as
I<mm>, where I<mm> is the minute (00 to 59). The minute of the hour is
in the time zone of the gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMaintenanceStartTime in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

