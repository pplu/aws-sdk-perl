package Paws::CloudWatchLogs::ExportTaskExecutionInfo;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Int', request_name => 'completionTime', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Int', request_name => 'creationTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ExportTaskExecutionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::ExportTaskExecutionInfo object:

  $service_obj->Method(Att1 => { CompletionTime => $value, ..., CreationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::ExportTaskExecutionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionTime

=head1 DESCRIPTION

Represents the status of an export task.

=head1 ATTRIBUTES


=head2 CompletionTime => Int

  The completion time of the export task, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC.


=head2 CreationTime => Int

  The creation time of the export task, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

