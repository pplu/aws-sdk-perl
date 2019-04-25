package Paws::KinesisAnalytics::CSVMappingParameters;
  use Moose;
  has RecordColumnDelimiter => (is => 'ro', isa => 'Str', required => 1);
  has RecordRowDelimiter => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::CSVMappingParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::CSVMappingParameters object:

  $service_obj->Method(Att1 => { RecordColumnDelimiter => $value, ..., RecordRowDelimiter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::CSVMappingParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->RecordColumnDelimiter

=head1 DESCRIPTION

Provides additional mapping information when the record format uses
delimiters, such as CSV. For example, the following sample records use
CSV format, where the records use the I<'\n'> as the row delimiter and
a comma (",") as the column delimiter:

C<"name1", "address1">

C<"name2", "address2">

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecordColumnDelimiter => Str

  Column delimiter. For example, in a CSV format, a comma (",") is the
typical column delimiter.


=head2 B<REQUIRED> RecordRowDelimiter => Str

  Row delimiter. For example, in a CSV format, I<'\n'> is the typical row
delimiter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

