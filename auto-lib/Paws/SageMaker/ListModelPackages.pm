
package Paws::SageMaker::ListModelPackages;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListModelPackages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListModelPackagesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelPackages - Arguments for method ListModelPackages on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListModelPackages on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListModelPackages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListModelPackages.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListModelPackagesOutput = $api . sagemaker->ListModelPackages(
      CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NameContains       => 'MyNameContains',         # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      SortBy             => 'Name',                   # OPTIONAL
      SortOrder          => 'Ascending',              # OPTIONAL
    );

    # Results:
    my $ModelPackageSummaryList =
      $ListModelPackagesOutput->ModelPackageSummaryList;
    my $NextToken = $ListModelPackagesOutput->NextToken;

    # Returns a L<Paws::SageMaker::ListModelPackagesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListModelPackages>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only model packages created after the specified
time (timestamp).



=head2 CreationTimeBefore => Str

A filter that returns only model packages created before the specified
time (timestamp).



=head2 MaxResults => Int

The maximum number of model packages to return in the response.



=head2 NameContains => Str

A string in the model package name. This filter returns only model
packages whose name contains the specified string.



=head2 NextToken => Str

If the response to a previous C<ListModelPackages> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of model packages, use the token in the next request.



=head2 SortBy => Str

The parameter by which to sort the results. The default is
C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">

=head2 SortOrder => Str

The sort order for the results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListModelPackages in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

