# Generated by default/object.tt
package Paws::SecurityHub::Occurrences;
  use Moose;
  has Cells => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Cell]');
  has LineRanges => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Range]');
  has OffsetRanges => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Range]');
  has Pages => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Page]');
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Record]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Occurrences

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Occurrences object:

  $service_obj->Method(Att1 => { Cells => $value, ..., Records => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Occurrences object:

  $result = $service_obj->Method(...);
  $result->Att1->Cells

=head1 DESCRIPTION

The detected occurrences of sensitive data.

=head1 ATTRIBUTES


=head2 Cells => ArrayRef[L<Paws::SecurityHub::Cell>]

Occurrences of sensitive data detected in Microsoft Excel workbooks,
comma-separated value (CSV) files, or tab-separated value (TSV) files.


=head2 LineRanges => ArrayRef[L<Paws::SecurityHub::Range>]

Occurrences of sensitive data detected in a non-binary text file or a
Microsoft Word file. Non-binary text files include files such as HTML,
XML, JSON, and TXT files.


=head2 OffsetRanges => ArrayRef[L<Paws::SecurityHub::Range>]

Occurrences of sensitive data detected in a binary text file.


=head2 Pages => ArrayRef[L<Paws::SecurityHub::Page>]

Occurrences of sensitive data in an Adobe Portable Document Format
(PDF) file.


=head2 Records => ArrayRef[L<Paws::SecurityHub::Record>]

Occurrences of sensitive data in an Apache Avro object container or an
Apache Parquet file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

