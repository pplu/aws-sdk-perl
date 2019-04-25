
package Paws::Glue::GetMapping;
  use Moose;
  has Location => (is => 'ro', isa => 'Paws::Glue::Location');
  has Sinks => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CatalogEntry]');
  has Source => (is => 'ro', isa => 'Paws::Glue::CatalogEntry', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMapping');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetMappingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMapping - Arguments for method GetMapping on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMapping on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMapping.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetMappingResponse = $glue->GetMapping(
      Source => {
        DatabaseName => 'MyNameString',    # min: 1, max: 255
        TableName    => 'MyNameString',    # min: 1, max: 255

      },
      Location => {
        DynamoDB => [
          {
            Name  => 'MyCodeGenArgName',
            Value => 'MyCodeGenArgValue',
            Param => 1,                     # OPTIONAL
          },
          ...
        ],                                  # max: 50; OPTIONAL
        Jdbc => [
          {
            Name  => 'MyCodeGenArgName',
            Value => 'MyCodeGenArgValue',
            Param => 1,                     # OPTIONAL
          },
          ...
        ],                                  # max: 50; OPTIONAL
        S3 => [
          {
            Name  => 'MyCodeGenArgName',
            Value => 'MyCodeGenArgValue',
            Param => 1,                     # OPTIONAL
          },
          ...
        ],                                  # max: 50; OPTIONAL
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
    my $Mapping = $GetMappingResponse->Mapping;

    # Returns a L<Paws::Glue::GetMappingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetMapping>

=head1 ATTRIBUTES


=head2 Location => L<Paws::Glue::Location>

Parameters for the mapping.



=head2 Sinks => ArrayRef[L<Paws::Glue::CatalogEntry>]

A list of target tables.



=head2 B<REQUIRED> Source => L<Paws::Glue::CatalogEntry>

Specifies the source table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMapping in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

