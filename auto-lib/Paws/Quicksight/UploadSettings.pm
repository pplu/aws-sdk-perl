package Paws::Quicksight::UploadSettings;
  use Moose;
  has ContainsHeader => (is => 'ro', isa => 'Bool');
  has Delimiter => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has StartFromRow => (is => 'ro', isa => 'Int');
  has TextQualifier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UploadSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::UploadSettings object:

  $service_obj->Method(Att1 => { ContainsHeader => $value, ..., TextQualifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::UploadSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainsHeader

=head1 DESCRIPTION

Information about the format for a source file or files.

=head1 ATTRIBUTES


=head2 ContainsHeader => Bool

  Whether the file has a header row, or the files each have a header row.


=head2 Delimiter => Str

  The delimiter between values in the file.


=head2 Format => Str

  File format.


=head2 StartFromRow => Int

  A row number to start reading data from.


=head2 TextQualifier => Str

  Text qualifier.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

