package Paws::RedShift::DataTransferProgress;
  use Moose;
  has CurrentRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has DataTransferredInMegaBytes => (is => 'ro', isa => 'Int');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Int');
  has EstimatedTimeToCompletionInSeconds => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has TotalDataInMegaBytes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DataTransferProgress

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::DataTransferProgress object:

  $service_obj->Method(Att1 => { CurrentRateInMegaBytesPerSecond => $value, ..., TotalDataInMegaBytes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::DataTransferProgress object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentRateInMegaBytesPerSecond

=head1 DESCRIPTION

Describes the status of a cluster while it is in the process of
resizing with an incremental resize.

=head1 ATTRIBUTES


=head2 CurrentRateInMegaBytesPerSecond => Num

  Describes the data transfer rate in MB's per second.


=head2 DataTransferredInMegaBytes => Int

  Describes the total amount of data that has been transfered in MB's.


=head2 ElapsedTimeInSeconds => Int

  Describes the number of seconds that have elapsed during the data
transfer.


=head2 EstimatedTimeToCompletionInSeconds => Int

  Describes the estimated number of seconds remaining to complete the
transfer.


=head2 Status => Str

  Describes the status of the cluster. While the transfer is in progress
the status is C<transferringdata>.


=head2 TotalDataInMegaBytes => Int

  Describes the total amount of data to be transfered in megabytes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

