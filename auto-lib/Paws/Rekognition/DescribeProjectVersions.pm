
package Paws::Rekognition::DescribeProjectVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProjectArn => (is => 'ro', isa => 'Str', required => 1);
  has VersionNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProjectVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DescribeProjectVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DescribeProjectVersions - Arguments for method DescribeProjectVersions on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProjectVersions on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DescribeProjectVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProjectVersions.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $DescribeProjectVersionsResponse = $rekognition->DescribeProjectVersions(
      ProjectArn   => 'MyProjectArn',
      MaxResults   => 1,                              # OPTIONAL
      NextToken    => 'MyExtendedPaginationToken',    # OPTIONAL
      VersionNames => [
        'MyVersionName', ...                          # min: 1, max: 255
      ],                                              # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeProjectVersionsResponse->NextToken;
    my $ProjectVersionDescriptions =
      $DescribeProjectVersionsResponse->ProjectVersionDescriptions;

    # Returns a L<Paws::Rekognition::DescribeProjectVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DescribeProjectVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per paginated call. The largest
value you can specify is 100. If you specify a value greater than 100,
a ValidationException error occurs. The default value is 100.



=head2 NextToken => Str

If the previous response was incomplete (because there is more results
to retrieve), Amazon Rekognition Custom Labels returns a pagination
token in the response. You can use this pagination token to retrieve
the next set of results.



=head2 B<REQUIRED> ProjectArn => Str

The Amazon Resource Name (ARN) of the project that contains the models
you want to describe.



=head2 VersionNames => ArrayRef[Str|Undef]

A list of model version names that you want to describe. You can add up
to 10 model version names to the list. If you don't specify a value,
all model descriptions are returned. A version name is part of a model
(ProjectVersion) ARN. For example, C<my-model.2020-01-21T09.10.15> is
the version name in the following ARN.
C<arn:aws:rekognition:us-east-1:123456789012:project/getting-started/version/I<my-model.2020-01-21T09.10.15>/1234567890123>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProjectVersions in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

