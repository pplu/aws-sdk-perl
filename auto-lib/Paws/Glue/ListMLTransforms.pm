
package Paws::Glue::ListMLTransforms;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Glue::TransformFilterCriteria');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Sort => (is => 'ro', isa => 'Paws::Glue::TransformSortCriteria');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMLTransforms');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListMLTransformsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListMLTransforms - Arguments for method ListMLTransforms on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMLTransforms on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListMLTransforms.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMLTransforms.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListMLTransformsResponse = $glue->ListMLTransforms(
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
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListMLTransformsResponse->NextToken;
    my $TransformIds = $ListMLTransformsResponse->TransformIds;

    # Returns a L<Paws::Glue::ListMLTransformsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListMLTransforms>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Glue::TransformFilterCriteria>

A C<TransformFilterCriteria> used to filter the machine learning
transforms.



=head2 MaxResults => Int

The maximum size of a list to return.



=head2 NextToken => Str

A continuation token, if this is a continuation request.



=head2 Sort => L<Paws::Glue::TransformSortCriteria>

A C<TransformSortCriteria> used to sort the machine learning
transforms.



=head2 Tags => L<Paws::Glue::TagsMap>

Specifies to return only these tagged resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMLTransforms in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

