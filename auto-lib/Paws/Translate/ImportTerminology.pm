# Generated from json/callargs_class.tt

package Paws::Translate::ImportTerminology;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Translate::Types qw/Translate_EncryptionKey Translate_TerminologyData/;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has EncryptionKey => (is => 'ro', isa => Translate_EncryptionKey, predicate => 1);
  has MergeStrategy => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TerminologyData => (is => 'ro', isa => Translate_TerminologyData, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ImportTerminology');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Translate::ImportTerminologyResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MergeStrategy' => {
                                    'type' => 'Str'
                                  },
               'EncryptionKey' => {
                                    'class' => 'Paws::Translate::EncryptionKey',
                                    'type' => 'Translate_EncryptionKey'
                                  },
               'TerminologyData' => {
                                      'class' => 'Paws::Translate::TerminologyData',
                                      'type' => 'Translate_TerminologyData'
                                    },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'MergeStrategy' => 1,
                    'TerminologyData' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ImportTerminology - Arguments for method ImportTerminology on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportTerminology on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method ImportTerminology.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportTerminology.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $ImportTerminologyResponse = $translate->ImportTerminology(
      MergeStrategy   => 'OVERWRITE',
      Name            => 'MyResourceName',
      TerminologyData => {
        File   => 'BlobTerminologyFile',    # max: 10485760
        Format => 'CSV',                    # values: CSV, TMX

      },
      Description   => 'MyDescription',     # OPTIONAL
      EncryptionKey => {
        Id   => 'MyEncryptionKeyID',        # min: 1, max: 400
        Type => 'KMS',                      # values: KMS

      },    # OPTIONAL
    );

    # Results:
    my $TerminologyProperties =
      $ImportTerminologyResponse->TerminologyProperties;

    # Returns a L<Paws::Translate::ImportTerminologyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/ImportTerminology>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the custom terminology being imported.



=head2 EncryptionKey => Translate_EncryptionKey

The encryption key for the custom terminology being imported.



=head2 B<REQUIRED> MergeStrategy => Str

The merge strategy of the custom terminology being imported. Currently,
only the OVERWRITE merge strategy is supported. In this case, the
imported terminology will overwrite an existing terminology of the same
name.

Valid values are: C<"OVERWRITE">

=head2 B<REQUIRED> Name => Str

The name of the custom terminology being imported.



=head2 B<REQUIRED> TerminologyData => Translate_TerminologyData

The terminology data for the custom terminology being imported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportTerminology in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

