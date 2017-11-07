package Paws::RDS::DescribeDBLogFilesDetails;
  use Moose;
  has LastWritten => (is => 'ro', isa => 'Int');
  has LogFileName => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBLogFilesDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DescribeDBLogFilesDetails object:

  $service_obj->Method(Att1 => { LastWritten => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DescribeDBLogFilesDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->LastWritten

=head1 DESCRIPTION

This data type is used as a response element to DescribeDBLogFiles.

=head1 ATTRIBUTES


=head2 LastWritten => Int

  A POSIX timestamp when the last log entry was written.


=head2 LogFileName => Str

  The name of the log file for the specified DB instance.


=head2 Size => Int

  The size, in bytes, of the log file for the specified DB instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

