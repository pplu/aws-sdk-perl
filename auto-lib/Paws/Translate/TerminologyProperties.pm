package Paws::Translate::TerminologyProperties;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EncryptionKey => (is => 'ro', isa => 'Paws::Translate::EncryptionKey');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SizeBytes => (is => 'ro', isa => 'Int');
  has SourceLanguageCode => (is => 'ro', isa => 'Str');
  has TargetLanguageCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TermCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TerminologyProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Translate::TerminologyProperties object:

  $service_obj->Method(Att1 => { Arn => $value, ..., TermCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Translate::TerminologyProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The properties of the custom terminology.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the custom terminology.


=head2 CreatedAt => Str

  The time at which the custom terminology was created, based on the
timestamp.


=head2 Description => Str

  The description of the custom terminology properties.


=head2 EncryptionKey => L<Paws::Translate::EncryptionKey>

  The encryption key for the custom terminology.


=head2 LastUpdatedAt => Str

  The time at which the custom terminology was last update, based on the
timestamp.


=head2 Name => Str

  The name of the custom terminology.


=head2 SizeBytes => Int

  The size of the file used when importing a custom terminology.


=head2 SourceLanguageCode => Str

  The language code for the source text of the translation request for
which the custom terminology is being used.


=head2 TargetLanguageCodes => ArrayRef[Str|Undef]

  The language codes for the target languages available with the custom
terminology file. All possible target languages are returned in array.


=head2 TermCount => Int

  The number of terms included in the custom terminology.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

