
package Paws::Quicksight::ListThemeVersions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has ThemeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThemeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListThemeVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/themes/{ThemeId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::ListThemeVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListThemeVersions - Arguments for method ListThemeVersions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThemeVersions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method ListThemeVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThemeVersions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $ListThemeVersionsResponse = $quicksight->ListThemeVersions(
      AwsAccountId => 'MyAwsAccountId',
      ThemeId      => 'MyRestrictiveResourceId',
      MaxResults   => 1,                           # OPTIONAL
      NextToken    => 'MyString',                  # OPTIONAL
    );

    # Results:
    my $NextToken = $ListThemeVersionsResponse->NextToken;
    my $RequestId = $ListThemeVersionsResponse->RequestId;
    my $Status    = $ListThemeVersionsResponse->Status;
    my $ThemeVersionSummaryList =
      $ListThemeVersionsResponse->ThemeVersionSummaryList;

    # Returns a L<Paws::Quicksight::ListThemeVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/ListThemeVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the themes that you're listing.



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.



=head2 B<REQUIRED> ThemeId => Str

The ID for the theme.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThemeVersions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

