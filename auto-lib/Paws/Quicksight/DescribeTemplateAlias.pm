
package Paws::Quicksight::DescribeTemplateAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AliasName', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTemplateAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeTemplateAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeTemplateAlias - Arguments for method DescribeTemplateAlias on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTemplateAlias on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeTemplateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTemplateAlias.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeTemplateAliasResponse = $quicksight->DescribeTemplateAlias(
      AliasName    => 'MyAliasName',
      AwsAccountId => 'MyAwsAccountId',
      TemplateId   => 'MyRestrictiveResourceId',

    );

    # Results:
    my $RequestId     = $DescribeTemplateAliasResponse->RequestId;
    my $Status        = $DescribeTemplateAliasResponse->Status;
    my $TemplateAlias = $DescribeTemplateAliasResponse->TemplateAlias;

    # Returns a L<Paws::Quicksight::DescribeTemplateAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeTemplateAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasName => Str

The name of the template alias that you want to describe. If you name a
specific alias, you describe the version that the alias points to. You
can specify the latest version of the template by providing the keyword
C<$LATEST> in the C<AliasName> parameter. The keyword C<$PUBLISHED>
doesn't apply to templates.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the template alias that you're
describing.



=head2 B<REQUIRED> TemplateId => Str

The ID for the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTemplateAlias in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

