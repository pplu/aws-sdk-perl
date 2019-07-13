package Paws::CloudWatchLogs::QueryStatistics;
  use Moose;
  has BytesScanned => (is => 'ro', isa => 'Num', request_name => 'bytesScanned', traits => ['NameInRequest']);
  has RecordsMatched => (is => 'ro', isa => 'Num', request_name => 'recordsMatched', traits => ['NameInRequest']);
  has RecordsScanned => (is => 'ro', isa => 'Num', request_name => 'recordsScanned', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::QueryStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::QueryStatistics object:

  $service_obj->Method(Att1 => { BytesScanned => $value, ..., RecordsScanned => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::QueryStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->BytesScanned

=head1 DESCRIPTION

Contains the number of log events scanned by the query, the number of
log events that matched the query criteria, and the total number of
bytes in the log events that were scanned.

=head1 ATTRIBUTES


=head2 BytesScanned => Num

  The total number of bytes in the log events scanned during the query.


=head2 RecordsMatched => Num

  The number of log events that matched the query string.


=head2 RecordsScanned => Num

  The total number of log events scanned during the query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

