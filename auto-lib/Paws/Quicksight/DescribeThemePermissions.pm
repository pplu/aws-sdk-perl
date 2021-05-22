
package Paws::Quicksight::DescribeThemePermissions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has ThemeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThemeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeThemePermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/themes/{ThemeId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeThemePermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeThemePermissions - Arguments for method DescribeThemePermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeThemePermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeThemePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeThemePermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeThemePermissionsResponse =
      $quicksight->DescribeThemePermissions(
      AwsAccountId => 'MyAwsAccountId',
      ThemeId      => 'MyRestrictiveResourceId',

      );

    # Results:
    my $Permissions = $DescribeThemePermissionsResponse->Permissions;
    my $RequestId   = $DescribeThemePermissionsResponse->RequestId;
    my $Status      = $DescribeThemePermissionsResponse->Status;
    my $ThemeArn    = $DescribeThemePermissionsResponse->ThemeArn;
    my $ThemeId     = $DescribeThemePermissionsResponse->ThemeId;

    # Returns a L<Paws::Quicksight::DescribeThemePermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeThemePermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the theme that you're
describing.



=head2 B<REQUIRED> ThemeId => Str

The ID for the theme that you want to describe permissions for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeThemePermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

