
package Paws::CostExplorer::GetTags;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has SearchString => (is => 'ro', isa => 'Str');
  has TagKey => (is => 'ro', isa => 'Str');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetTags - Arguments for method GetTags on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTags on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTags.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetTagsResponse = $ce->GetTags(
      TimePeriod => {
        End   => 'MyYearMonthDay',
        Start => 'MyYearMonthDay',

      },
      NextPageToken => 'MyNextPageToken',    # OPTIONAL
      SearchString  => 'MySearchString',     # OPTIONAL
      TagKey        => 'MyTagKey',           # OPTIONAL
    );

    # Results:
    my $NextPageToken = $GetTagsResponse->NextPageToken;
    my $ReturnSize    = $GetTagsResponse->ReturnSize;
    my $Tags          = $GetTagsResponse->Tags;
    my $TotalSize     = $GetTagsResponse->TotalSize;

    # Returns a L<Paws::CostExplorer::GetTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetTags>

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the
maximum page size.



=head2 SearchString => Str

The value that you want to search for.



=head2 TagKey => Str

The key of the tag that you want to return values for.



=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>

The start and end dates for retrieving the dimension values. The start
date is inclusive, but the end date is exclusive. For example, if
C<start> is C<2017-01-01> and C<end> is C<2017-05-01>, then the cost
and usage data is retrieved from C<2017-01-01> up to and including
C<2017-04-30> but not including C<2017-05-01>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTags in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

