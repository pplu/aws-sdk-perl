
package Paws::Quicksight::DescribeTheme;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'alias-name');
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has ThemeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThemeId', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'version-number');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTheme');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/themes/{ThemeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeThemeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeTheme - Arguments for method DescribeTheme on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTheme on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeTheme.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTheme.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeThemeResponse = $quicksight->DescribeTheme(
      AwsAccountId  => 'MyAwsAndAccountId',
      ThemeId       => 'MyRestrictiveResourceId',
      AliasName     => 'MyAliasName',               # OPTIONAL
      VersionNumber => 1,                           # OPTIONAL
    );

    # Results:
    my $RequestId = $DescribeThemeResponse->RequestId;
    my $Status    = $DescribeThemeResponse->Status;
    my $Theme     = $DescribeThemeResponse->Theme;

    # Returns a L<Paws::Quicksight::DescribeThemeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeTheme>

=head1 ATTRIBUTES


=head2 AliasName => Str

The alias of the theme that you want to describe. If you name a
specific alias, you describe the version that the alias points to. You
can specify the latest version of the theme by providing the keyword
C<$LATEST> in the C<AliasName> parameter. The keyword C<$PUBLISHED>
doesn't apply to themes.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the theme that you're
describing.



=head2 B<REQUIRED> ThemeId => Str

The ID for the theme.



=head2 VersionNumber => Int

The version number for the version to describe. If a C<VersionNumber>
parameter value isn't provided, the latest version of the theme is
described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTheme in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

