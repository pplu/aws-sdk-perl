# Generated from json/callargs_class.tt

package Paws::Glue::BatchDeletePartition;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_PartitionValueList/;
  has CatalogId => (is => 'ro', isa => Str, predicate => 1);
  has DatabaseName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PartitionsToDelete => (is => 'ro', isa => ArrayRef[Glue_PartitionValueList], required => 1, predicate => 1);
  has TableName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BatchDeletePartition');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::BatchDeletePartitionResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DatabaseName' => {
                                   'type' => 'Str'
                                 },
               'PartitionsToDelete' => {
                                         'type' => 'ArrayRef[Glue_PartitionValueList]',
                                         'class' => 'Paws::Glue::PartitionValueList'
                                       },
               'TableName' => {
                                'type' => 'Str'
                              },
               'CatalogId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'TableName' => 1,
                    'DatabaseName' => 1,
                    'PartitionsToDelete' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchDeletePartition - Arguments for method BatchDeletePartition on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeletePartition on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method BatchDeletePartition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeletePartition.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $BatchDeletePartitionResponse = $glue->BatchDeletePartition(
      DatabaseName       => 'MyNameString',
      PartitionsToDelete => [
        {
          Values => [
            'MyValueString', ...    # max: 1024
          ],

        },
        ...
      ],
      TableName => 'MyNameString',
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

    # Results:
    my $Errors = $BatchDeletePartitionResponse->Errors;

    # Returns a L<Paws::Glue::BatchDeletePartitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/BatchDeletePartition>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the partition to be deleted resides.
If none is provided, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database in which the table in question
resides.



=head2 B<REQUIRED> PartitionsToDelete => ArrayRef[Glue_PartitionValueList]

A list of C<PartitionInput> structures that define the partitions to be
deleted.



=head2 B<REQUIRED> TableName => Str

The name of the table that contains the partitions to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeletePartition in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

