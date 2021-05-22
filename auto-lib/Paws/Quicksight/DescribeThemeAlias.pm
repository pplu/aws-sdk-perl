
package Paws::Quicksight::DescribeThemeAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AliasName', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has ThemeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThemeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeThemeAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeThemeAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeThemeAlias - Arguments for method DescribeThemeAlias on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeThemeAlias on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeThemeAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeThemeAlias.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeThemeAliasResponse = $quicksight->DescribeThemeAlias(
      AliasName    => 'MyAliasName',
      AwsAccountId => 'MyAwsAccountId',
      ThemeId      => 'MyRestrictiveResourceId',

    );

    # Results:
    my $RequestId  = $DescribeThemeAliasResponse->RequestId;
    my $Status     = $DescribeThemeAliasResponse->Status;
    my $ThemeAlias = $DescribeThemeAliasResponse->ThemeAlias;

    # Returns a L<Paws::Quicksight::DescribeThemeAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeThemeAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasName => Str

The name of the theme alias that you want to describe.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the theme alias that you're
describing.



=head2 B<REQUIRED> ThemeId => Str

The ID for the theme.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeThemeAlias in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

