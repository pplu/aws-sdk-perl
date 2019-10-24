# Generated from json/callargs_class.tt

package Paws::Personalize::CreateDataset;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has DatasetGroupArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DatasetType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SchemaArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDataset');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::CreateDatasetResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SchemaArn' => {
                                'type' => 'Str'
                              },
               'DatasetType' => {
                                  'type' => 'Str'
                                },
               'DatasetGroupArn' => {
                                      'type' => 'Str'
                                    },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'SchemaArn' => 'schemaArn',
                       'DatasetType' => 'datasetType',
                       'DatasetGroupArn' => 'datasetGroupArn',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'SchemaArn' => 1,
                    'DatasetType' => 1,
                    'DatasetGroupArn' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDataset - Arguments for method CreateDataset on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataset on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataset.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateDatasetResponse = $personalize->CreateDataset(
      DatasetGroupArn => 'MyArn',
      DatasetType     => 'MyDatasetType',
      Name            => 'MyName',
      SchemaArn       => 'MyArn',

    );

    # Results:
    my $DatasetArn = $CreateDatasetResponse->DatasetArn;

    # Returns a L<Paws::Personalize::CreateDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the dataset group to add the dataset
to.



=head2 B<REQUIRED> DatasetType => Str

The type of dataset.

One of the following (case insensitive) values:

=over

=item *

Interactions

=item *

Items

=item *

Users

=back




=head2 B<REQUIRED> Name => Str

The name for the dataset.



=head2 B<REQUIRED> SchemaArn => Str

The ARN of the schema to associate with the dataset. The schema defines
the dataset fields.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataset in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

