package Paws::Greengrass::BulkDeploymentMetrics;
  use Moose;
  has InvalidInputRecords => (is => 'ro', isa => 'Int');
  has RecordsProcessed => (is => 'ro', isa => 'Int');
  has RetryAttempts => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::BulkDeploymentMetrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::BulkDeploymentMetrics object:

  $service_obj->Method(Att1 => { InvalidInputRecords => $value, ..., RetryAttempts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::BulkDeploymentMetrics object:

  $result = $service_obj->Method(...);
  $result->Att1->InvalidInputRecords

=head1 DESCRIPTION

Relevant metrics on input records processed during bulk deployment.

=head1 ATTRIBUTES


=head2 InvalidInputRecords => Int

  The total number of records that returned a non-retryable error. For
example, this can occur if a group record from the input file uses an
invalid format or specifies a nonexistent group version, or if the
execution role doesn't grant permission to deploy a group or group
version.


=head2 RecordsProcessed => Int

  The total number of group records from the input file that have been
processed so far, or attempted.


=head2 RetryAttempts => Int

  The total number of deployment attempts that returned a retryable
error. For example, a retry is triggered if the attempt to deploy a
group returns a throttling error. ''StartBulkDeployment'' retries a
group deployment up to five times.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

