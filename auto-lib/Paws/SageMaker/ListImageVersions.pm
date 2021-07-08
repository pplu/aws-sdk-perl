
package Paws::SageMaker::ListImageVersions;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has ImageName => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImageVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListImageVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListImageVersions - Arguments for method ListImageVersions on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImageVersions on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListImageVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImageVersions.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListImageVersionsResponse = $api . sagemaker->ListImageVersions(
      ImageName              => 'MyImageName',
      CreationTimeAfter      => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults             => 1,                        # OPTIONAL
      NextToken              => 'MyNextToken',            # OPTIONAL
      SortBy                 => 'CREATION_TIME',          # OPTIONAL
      SortOrder              => 'ASCENDING',              # OPTIONAL
    );

    # Results:
    my $ImageVersions = $ListImageVersionsResponse->ImageVersions;
    my $NextToken     = $ListImageVersionsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListImageVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListImageVersions>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only versions created on or after the specified
time.



=head2 CreationTimeBefore => Str

A filter that returns only versions created on or before the specified
time.



=head2 B<REQUIRED> ImageName => Str

The name of the image to list the versions of.



=head2 LastModifiedTimeAfter => Str

A filter that returns only versions modified on or after the specified
time.



=head2 LastModifiedTimeBefore => Str

A filter that returns only versions modified on or before the specified
time.



=head2 MaxResults => Int

The maximum number of versions to return in the response. The default
value is 10.



=head2 NextToken => Str

If the previous call to C<ListImageVersions> didn't return the full set
of versions, the call returns a token for getting the next set of
versions.



=head2 SortBy => Str

The property used to sort results. The default value is
C<CREATION_TIME>.

Valid values are: C<"CREATION_TIME">, C<"LAST_MODIFIED_TIME">, C<"VERSION">

=head2 SortOrder => Str

The sort order. The default value is C<DESCENDING>.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImageVersions in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

