
package Paws::SageMaker::ListFeatureGroups;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has FeatureGroupStatusEquals => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has OfflineStoreStatusEquals => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFeatureGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListFeatureGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListFeatureGroups - Arguments for method ListFeatureGroups on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFeatureGroups on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListFeatureGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFeatureGroups.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListFeatureGroupsResponse = $api . sagemaker->ListFeatureGroups(
      CreationTimeAfter        => '1970-01-01T01:00:00',           # OPTIONAL
      CreationTimeBefore       => '1970-01-01T01:00:00',           # OPTIONAL
      FeatureGroupStatusEquals => 'Creating',                      # OPTIONAL
      MaxResults               => 1,                               # OPTIONAL
      NameContains             => 'MyFeatureGroupNameContains',    # OPTIONAL
      NextToken                => 'MyNextToken',                   # OPTIONAL
      OfflineStoreStatusEquals => 'Active',                        # OPTIONAL
      SortBy                   => 'Name',                          # OPTIONAL
      SortOrder                => 'Ascending',                     # OPTIONAL
    );

    # Results:
    my $FeatureGroupSummaries =
      $ListFeatureGroupsResponse->FeatureGroupSummaries;
    my $NextToken = $ListFeatureGroupsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListFeatureGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListFeatureGroups>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Use this parameter to search for C<FeatureGroups>s created after a
specific date and time.



=head2 CreationTimeBefore => Str

Use this parameter to search for C<FeatureGroups>s created before a
specific date and time.



=head2 FeatureGroupStatusEquals => Str

A C<FeatureGroup> status. Filters by C<FeatureGroup> status.

Valid values are: C<"Creating">, C<"Created">, C<"CreateFailed">, C<"Deleting">, C<"DeleteFailed">

=head2 MaxResults => Int

The maximum number of results returned by C<ListFeatureGroups>.



=head2 NameContains => Str

A string that partially matches one or more C<FeatureGroup>s names.
Filters C<FeatureGroup>s by name.



=head2 NextToken => Str

A token to resume pagination of C<ListFeatureGroups> results.



=head2 OfflineStoreStatusEquals => Str

An C<OfflineStore> status. Filters by C<OfflineStore> status.

Valid values are: C<"Active">, C<"Blocked">, C<"Disabled">

=head2 SortBy => Str

The value on which the feature group list is sorted.

Valid values are: C<"Name">, C<"FeatureGroupStatus">, C<"OfflineStoreStatus">, C<"CreationTime">

=head2 SortOrder => Str

The order in which feature groups are listed.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFeatureGroups in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

