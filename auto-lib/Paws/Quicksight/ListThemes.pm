
package Paws::Quicksight::ListThemes;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListThemes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/themes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::ListThemesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListThemes - Arguments for method ListThemes on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThemes on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method ListThemes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThemes.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $ListThemesResponse = $quicksight->ListThemes(
      AwsAccountId => 'MyAwsAccountId',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyString',         # OPTIONAL
      Type         => 'QUICKSIGHT',       # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListThemesResponse->NextToken;
    my $RequestId        = $ListThemesResponse->RequestId;
    my $Status           = $ListThemesResponse->Status;
    my $ThemeSummaryList = $ListThemesResponse->ThemeSummaryList;

    # Returns a L<Paws::Quicksight::ListThemesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/ListThemes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the themes that you're listing.



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.



=head2 Type => Str

The type of themes that you want to list. Valid options include the
following:

=over

=item *

C<ALL (default)>- Display all existing themes.

=item *

C<CUSTOM> - Display only the themes created by people using Amazon
QuickSight.

=item *

C<QUICKSIGHT> - Display only the starting themes defined by QuickSight.

=back


Valid values are: C<"QUICKSIGHT">, C<"CUSTOM">, C<"ALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThemes in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

