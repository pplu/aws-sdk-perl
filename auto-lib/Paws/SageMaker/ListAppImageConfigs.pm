
package Paws::SageMaker::ListAppImageConfigs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has ModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has ModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAppImageConfigs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListAppImageConfigsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAppImageConfigs - Arguments for method ListAppImageConfigs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAppImageConfigs on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListAppImageConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAppImageConfigs.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListAppImageConfigsResponse = $api . sagemaker->ListAppImageConfigs(
      CreationTimeAfter  => '1970-01-01T01:00:00',     # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',     # OPTIONAL
      MaxResults         => 1,                         # OPTIONAL
      ModifiedTimeAfter  => '1970-01-01T01:00:00',     # OPTIONAL
      ModifiedTimeBefore => '1970-01-01T01:00:00',     # OPTIONAL
      NameContains       => 'MyAppImageConfigName',    # OPTIONAL
      NextToken          => 'MyNextToken',             # OPTIONAL
      SortBy             => 'CreationTime',            # OPTIONAL
      SortOrder          => 'Ascending',               # OPTIONAL
    );

    # Results:
    my $AppImageConfigs = $ListAppImageConfigsResponse->AppImageConfigs;
    my $NextToken       = $ListAppImageConfigsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListAppImageConfigsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListAppImageConfigs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only AppImageConfigs created on or after the
specified time.



=head2 CreationTimeBefore => Str

A filter that returns only AppImageConfigs created on or before the
specified time.



=head2 MaxResults => Int

The maximum number of AppImageConfigs to return in the response. The
default value is 10.



=head2 ModifiedTimeAfter => Str

A filter that returns only AppImageConfigs modified on or after the
specified time.



=head2 ModifiedTimeBefore => Str

A filter that returns only AppImageConfigs modified on or before the
specified time.



=head2 NameContains => Str

A filter that returns only AppImageConfigs whose name contains the
specified string.



=head2 NextToken => Str

If the previous call to C<ListImages> didn't return the full set of
AppImageConfigs, the call returns a token for getting the next set of
AppImageConfigs.



=head2 SortBy => Str

The property used to sort results. The default value is
C<CreationTime>.

Valid values are: C<"CreationTime">, C<"LastModifiedTime">, C<"Name">

=head2 SortOrder => Str

The sort order. The default value is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAppImageConfigs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

