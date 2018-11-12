package Paws::Athena::QueryExecutionStatistics;
  use Moose;
  has DataScannedInBytes => (is => 'ro', isa => 'Int');
  has EngineExecutionTimeInMillis => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::QueryExecutionStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::QueryExecutionStatistics object:

  $service_obj->Method(Att1 => { DataScannedInBytes => $value, ..., EngineExecutionTimeInMillis => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::QueryExecutionStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->DataScannedInBytes

=head1 DESCRIPTION

The amount of data scanned during the query execution and the amount of
time that it took to execute, and the type of statement that was run.

=head1 ATTRIBUTES


=head2 DataScannedInBytes => Int

  The number of bytes in the data that was queried.


=head2 EngineExecutionTimeInMillis => Int

  The number of milliseconds that the query took to execute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

