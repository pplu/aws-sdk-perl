
package Paws::StorageGateway::DescribeMaintenanceStartTime;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceStartTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeMaintenanceStartTimeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeMaintenanceStartTime - Arguments for method DescribeMaintenanceStartTime on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMaintenanceStartTime on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DescribeMaintenanceStartTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMaintenanceStartTime.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To describe gateway's maintenance start time
    # Returns your gateway's weekly maintenance start time including the day and
    # time of the week.
    my $DescribeMaintenanceStartTimeOutput =
      $storagegateway->DescribeMaintenanceStartTime(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B'
      }
      );

    # Results:
    my $DayOfWeek    = $DescribeMaintenanceStartTimeOutput->DayOfWeek;
    my $GatewayARN   = $DescribeMaintenanceStartTimeOutput->GatewayARN;
    my $HourOfDay    = $DescribeMaintenanceStartTimeOutput->HourOfDay;
    my $MinuteOfHour = $DescribeMaintenanceStartTimeOutput->MinuteOfHour;
    my $Timezone     = $DescribeMaintenanceStartTimeOutput->Timezone;

 # Returns a L<Paws::StorageGateway::DescribeMaintenanceStartTimeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DescribeMaintenanceStartTime>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMaintenanceStartTime in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

