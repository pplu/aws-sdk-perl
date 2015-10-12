package Paws::CloudWatchLogs::ExportTaskStatus;
  use Moose;
  has code => (is => 'ro', isa => 'Str');
  has message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ExportTaskStatus

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::ExportTaskStatus object:

  $service_obj->Method(Att1 => { code => $value, ..., message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::ExportTaskStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->code

=head1 ATTRIBUTES

=head2 code => Str

  Status code of the export task.

=head2 message => Str

  Status message related to the C<code>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

