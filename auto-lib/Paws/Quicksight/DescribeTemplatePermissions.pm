
package Paws::Quicksight::DescribeTemplatePermissions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTemplatePermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/templates/{TemplateId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeTemplatePermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeTemplatePermissions - Arguments for method DescribeTemplatePermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTemplatePermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeTemplatePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTemplatePermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeTemplatePermissionsResponse =
      $quicksight->DescribeTemplatePermissions(
      AwsAccountId => 'MyAwsAccountId',
      TemplateId   => 'MyRestrictiveResourceId',

      );

    # Results:
    my $Permissions = $DescribeTemplatePermissionsResponse->Permissions;
    my $RequestId   = $DescribeTemplatePermissionsResponse->RequestId;
    my $Status      = $DescribeTemplatePermissionsResponse->Status;
    my $TemplateArn = $DescribeTemplatePermissionsResponse->TemplateArn;
    my $TemplateId  = $DescribeTemplatePermissionsResponse->TemplateId;

    # Returns a L<Paws::Quicksight::DescribeTemplatePermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeTemplatePermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

AWS account ID that contains the template you are describing.



=head2 B<REQUIRED> TemplateId => Str

The ID for the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTemplatePermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

