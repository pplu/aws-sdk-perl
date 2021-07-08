
package Paws::SageMaker::ListAssociations;
  use Moose;
  has AssociationType => (is => 'ro', isa => 'Str');
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has DestinationArn => (is => 'ro', isa => 'Str');
  has DestinationType => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListAssociationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAssociations - Arguments for method ListAssociations on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssociations on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssociations.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListAssociationsResponse = $api . sagemaker->ListAssociations(
      AssociationType => 'ContributedTo',             # OPTIONAL
      CreatedAfter    => '1970-01-01T01:00:00',       # OPTIONAL
      CreatedBefore   => '1970-01-01T01:00:00',       # OPTIONAL
      DestinationArn  => 'MyAssociationEntityArn',    # OPTIONAL
      DestinationType => 'MyString256',               # OPTIONAL
      MaxResults      => 1,                           # OPTIONAL
      NextToken       => 'MyNextToken',               # OPTIONAL
      SortBy          => 'SourceArn',                 # OPTIONAL
      SortOrder       => 'Ascending',                 # OPTIONAL
      SourceArn       => 'MyAssociationEntityArn',    # OPTIONAL
      SourceType      => 'MyString256',               # OPTIONAL
    );

    # Results:
    my $AssociationSummaries = $ListAssociationsResponse->AssociationSummaries;
    my $NextToken            = $ListAssociationsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListAssociations>

=head1 ATTRIBUTES


=head2 AssociationType => Str

A filter that returns only associations of the specified type.

Valid values are: C<"ContributedTo">, C<"AssociatedWith">, C<"DerivedFrom">, C<"Produced">

=head2 CreatedAfter => Str

A filter that returns only associations created on or after the
specified time.



=head2 CreatedBefore => Str

A filter that returns only associations created on or before the
specified time.



=head2 DestinationArn => Str

A filter that returns only associations with the specified destination
Amazon Resource Name (ARN).



=head2 DestinationType => Str

A filter that returns only associations with the specified destination
type.



=head2 MaxResults => Int

The maximum number of associations to return in the response. The
default value is 10.



=head2 NextToken => Str

If the previous call to C<ListAssociations> didn't return the full set
of associations, the call returns a token for getting the next set of
associations.



=head2 SortBy => Str

The property used to sort results. The default value is
C<CreationTime>.

Valid values are: C<"SourceArn">, C<"DestinationArn">, C<"SourceType">, C<"DestinationType">, C<"CreationTime">

=head2 SortOrder => Str

The sort order. The default value is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 SourceArn => Str

A filter that returns only associations with the specified source ARN.



=head2 SourceType => Str

A filter that returns only associations with the specified source type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssociations in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

