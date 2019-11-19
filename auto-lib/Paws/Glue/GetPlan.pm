# Generated from json/callargs_class.tt

package Paws::Glue::GetPlan;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_CatalogEntry Glue_Location Glue_MappingEntry/;
  has Language => (is => 'ro', isa => Str, predicate => 1);
  has Location => (is => 'ro', isa => Glue_Location, predicate => 1);
  has Mapping => (is => 'ro', isa => ArrayRef[Glue_MappingEntry], required => 1, predicate => 1);
  has Sinks => (is => 'ro', isa => ArrayRef[Glue_CatalogEntry], predicate => 1);
  has Source => (is => 'ro', isa => Glue_CatalogEntry, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetPlan');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::GetPlanResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Source' => 1,
                    'Mapping' => 1
                  },
  'types' => {
               'Language' => {
                               'type' => 'Str'
                             },
               'Sinks' => {
                            'type' => 'ArrayRef[Glue_CatalogEntry]',
                            'class' => 'Paws::Glue::CatalogEntry'
                          },
               'Source' => {
                             'class' => 'Paws::Glue::CatalogEntry',
                             'type' => 'Glue_CatalogEntry'
                           },
               'Mapping' => {
                              'type' => 'ArrayRef[Glue_MappingEntry]',
                              'class' => 'Paws::Glue::MappingEntry'
                            },
               'Location' => {
                               'type' => 'Glue_Location',
                               'class' => 'Paws::Glue::Location'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetPlan - Arguments for method GetPlan on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPlan on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPlan.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetPlanResponse = $glue->GetPlan(
      Mapping => [
        {
          SourcePath  => 'MySchemaPathString',    # OPTIONAL
          SourceTable => 'MyTableName',           # OPTIONAL
          SourceType  => 'MyFieldType',           # OPTIONAL
          TargetPath  => 'MySchemaPathString',    # OPTIONAL
          TargetTable => 'MyTableName',           # OPTIONAL
          TargetType  => 'MyFieldType',           # OPTIONAL
        },
        ...
      ],
      Source => {
        DatabaseName => 'MyNameString',           # min: 1, max: 255
        TableName    => 'MyNameString',           # min: 1, max: 255

      },
      Language => 'PYTHON',                       # OPTIONAL
      Location => {
        DynamoDB => [
          {
            Name  => 'MyCodeGenArgName',
            Value => 'MyCodeGenArgValue',
            Param => 1,                           # OPTIONAL
          },
          ...
        ],                                        # max: 50; OPTIONAL
        Jdbc => [
          {
            Name  => 'MyCodeGenArgName',
            Value => 'MyCodeGenArgValue',
            Param => 1,                           # OPTIONAL
          },
          ...
        ],                                        # max: 50; OPTIONAL
        S3 => [
          {
            Name  => 'MyCodeGenArgName',
            Value => 'MyCodeGenArgValue',
            Param => 1,                           # OPTIONAL
          },
          ...
        ],                                        # max: 50; OPTIONAL
      },    # OPTIONAL
      Sinks => [
        {
          DatabaseName => 'MyNameString',    # min: 1, max: 255
          TableName    => 'MyNameString',    # min: 1, max: 255

        },
        ...
      ],                                     # OPTIONAL
    );

    # Results:
    my $PythonScript = $GetPlanResponse->PythonScript;
    my $ScalaCode    = $GetPlanResponse->ScalaCode;

    # Returns a L<Paws::Glue::GetPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetPlan>

=head1 ATTRIBUTES


=head2 Language => Str

The programming language of the code to perform the mapping.

Valid values are: C<"PYTHON">, C<"SCALA">

=head2 Location => Glue_Location

The parameters for the mapping.



=head2 B<REQUIRED> Mapping => ArrayRef[Glue_MappingEntry]

The list of mappings from a source table to target tables.



=head2 Sinks => ArrayRef[Glue_CatalogEntry]

The target tables.



=head2 B<REQUIRED> Source => Glue_CatalogEntry

The source table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPlan in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

