package Paws::Firehose::CopyCommand;
  use Moose;
  has CopyOptions => (is => 'ro', isa => 'Str');
  has DataTableColumns => (is => 'ro', isa => 'Str');
  has DataTableName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::CopyCommand

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::CopyCommand object:

  $service_obj->Method(Att1 => { CopyOptions => $value, ..., DataTableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::CopyCommand object:

  $result = $service_obj->Method(...);
  $result->Att1->CopyOptions

=head1 DESCRIPTION

Describes a C<COPY> command for Amazon Redshift.

=head1 ATTRIBUTES


=head2 CopyOptions => Str

  Optional parameters to use with the Amazon Redshift C<COPY> command.
For more information, see the "Optional Parameters" section of Amazon
Redshift COPY command
(http://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html). Some
possible examples that would apply to Kinesis Data Firehose are as
follows:

C<delimiter '\t' lzop;> - fields are delimited with "\t" (TAB
character) and compressed using lzop.

C<delimiter '|'> - fields are delimited with "|" (this is the default
delimiter).

C<delimiter '|' escape> - the delimiter should be escaped.

C<fixedwidth
'venueid:3,venuename:25,venuecity:12,venuestate:2,venueseats:6'> -
fields are fixed width in the source, with each width specified after
every column in the table.

C<JSON 's3://mybucket/jsonpaths.txt'> - data is in JSON format, and the
path specified is the format of the data.

For more examples, see Amazon Redshift COPY command examples
(http://docs.aws.amazon.com/redshift/latest/dg/r_COPY_command_examples.html).


=head2 DataTableColumns => Str

  A comma-separated list of column names.


=head2 B<REQUIRED> DataTableName => Str

  The name of the target table. The table must already exist in the
database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

