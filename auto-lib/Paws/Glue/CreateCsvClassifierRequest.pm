package Paws::Glue::CreateCsvClassifierRequest;
  use Moose;
  has AllowSingleColumn => (is => 'ro', isa => 'Bool');
  has ContainsHeader => (is => 'ro', isa => 'Str');
  has Delimiter => (is => 'ro', isa => 'Str');
  has DisableValueTrimming => (is => 'ro', isa => 'Bool');
  has Header => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has QuoteSymbol => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateCsvClassifierRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::CreateCsvClassifierRequest object:

  $service_obj->Method(Att1 => { AllowSingleColumn => $value, ..., QuoteSymbol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::CreateCsvClassifierRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowSingleColumn

=head1 DESCRIPTION

Specifies a custom CSV classifier for C<CreateClassifier> to create.

=head1 ATTRIBUTES


=head2 AllowSingleColumn => Bool

  Enables the processing of files that contain only one column.


=head2 ContainsHeader => Str

  Indicates whether the CSV file contains a header.


=head2 Delimiter => Str

  A custom symbol to denote what separates each column entry in the row.


=head2 DisableValueTrimming => Bool

  Specifies not to trim values before identifying the type of column
values. The default value is true.


=head2 Header => ArrayRef[Str|Undef]

  A list of strings representing column names.


=head2 B<REQUIRED> Name => Str

  The name of the classifier.


=head2 QuoteSymbol => Str

  A custom symbol to denote what combines content into a single column
value. Must be different from the column delimiter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

