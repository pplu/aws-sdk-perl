package Paws::Glue::CsvClassifier;
  use Moose;
  has AllowSingleColumn => (is => 'ro', isa => 'Bool');
  has ContainsHeader => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Delimiter => (is => 'ro', isa => 'Str');
  has DisableValueTrimming => (is => 'ro', isa => 'Bool');
  has Header => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastUpdated => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has QuoteSymbol => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CsvClassifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::CsvClassifier object:

  $service_obj->Method(Att1 => { AllowSingleColumn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::CsvClassifier object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowSingleColumn

=head1 DESCRIPTION

A classifier for custom C<CSV> content.

=head1 ATTRIBUTES


=head2 AllowSingleColumn => Bool

  Enables the processing of files that contain only one column.


=head2 ContainsHeader => Str

  Indicates whether the CSV file contains a header.


=head2 CreationTime => Str

  The time this classifier was registered.


=head2 Delimiter => Str

  A custom symbol to denote what separates each column entry in the row.


=head2 DisableValueTrimming => Bool

  Specifies not to trim values before identifying the type of column
values. The default value is true.


=head2 Header => ArrayRef[Str|Undef]

  A list of strings representing column names.


=head2 LastUpdated => Str

  The time this classifier was last updated.


=head2 B<REQUIRED> Name => Str

  The name of the classifier.


=head2 QuoteSymbol => Str

  A custom symbol to denote what combines content into a single column
value. Must be different from the column delimiter.


=head2 Version => Int

  The version of this classifier.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

