
package Paws::Glue::GetMLTransforms;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Glue::TransformFilterCriteria');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Sort => (is => 'ro', isa => 'Paws::Glue::TransformSortCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMLTransforms');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetMLTransformsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMLTransforms - Arguments for method GetMLTransforms on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMLTransforms on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetMLTransforms.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMLTransforms.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetMLTransformsResponse = $glue->GetMLTransforms(
      Filter => {
        CreatedAfter      => '1970-01-01T01:00:00', # OPTIONAL
        CreatedBefore     => '1970-01-01T01:00:00', # OPTIONAL
        GlueVersion       => 'MyGlueVersionString', # min: 1, max: 255; OPTIONAL
        LastModifiedAfter => '1970-01-01T01:00:00', # OPTIONAL
        LastModifiedBefore => '1970-01-01T01:00:00',    # OPTIONAL
        Name               => 'MyNameString',    # min: 1, max: 255; OPTIONAL
        Schema             => [
          {
            DataType => 'MyColumnTypeString',    # max: 131072; OPTIONAL
            Name     => 'MyColumnNameString',    # min: 1, max: 1024; OPTIONAL
          },
          ...
        ],    # max: 100; OPTIONAL
        Status => 'NOT_READY',    # values: NOT_READY, READY, DELETING; OPTIONAL
        TransformType => 'FIND_MATCHES',    # values: FIND_MATCHES; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Sort       => {
        Column =>
          'NAME', # values: NAME, TRANSFORM_TYPE, STATUS, CREATED, LAST_MODIFIED
        SortDirection => 'DESCENDING',    # values: DESCENDING, ASCENDING

      },    # OPTIONAL
    );

    # Results:
    my $NextToken  = $GetMLTransformsResponse->NextToken;
    my $Transforms = $GetMLTransformsResponse->Transforms;

    # Returns a L<Paws::Glue::GetMLTransformsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetMLTransforms>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Glue::TransformFilterCriteria>

The filter transformation criteria.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A paginated token to offset the results.



=head2 Sort => L<Paws::Glue::TransformSortCriteria>

The sorting criteria.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMLTransforms in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

