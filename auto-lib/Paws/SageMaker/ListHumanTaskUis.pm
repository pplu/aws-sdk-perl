
package Paws::SageMaker::ListHumanTaskUis;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHumanTaskUis');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListHumanTaskUisResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListHumanTaskUis - Arguments for method ListHumanTaskUis on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHumanTaskUis on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListHumanTaskUis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHumanTaskUis.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListHumanTaskUisResponse = $api . sagemaker->ListHumanTaskUis(
      CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      SortOrder          => 'Ascending',              # OPTIONAL
    );

    # Results:
    my $HumanTaskUiSummaries = $ListHumanTaskUisResponse->HumanTaskUiSummaries;
    my $NextToken            = $ListHumanTaskUisResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListHumanTaskUisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListHumanTaskUis>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only human task user interfaces with a creation
time greater than or equal to the specified timestamp.



=head2 CreationTimeBefore => Str

A filter that returns only human task user interfaces that were created
before the specified timestamp.



=head2 MaxResults => Int

The total number of items to return. If the total number of available
items is more than the value specified in C<MaxResults>, then a
C<NextToken> will be provided in the output that you can use to resume
pagination.



=head2 NextToken => Str

A token to resume pagination.



=head2 SortOrder => Str

An optional value that specifies whether you want the results sorted in
C<Ascending> or C<Descending> order.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHumanTaskUis in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

