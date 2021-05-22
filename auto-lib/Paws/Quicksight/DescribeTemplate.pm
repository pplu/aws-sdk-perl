
package Paws::Quicksight::DescribeTemplate;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'alias-name');
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateId', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'version-number');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/templates/{TemplateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeTemplate - Arguments for method DescribeTemplate on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTemplate on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTemplate.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeTemplateResponse = $quicksight->DescribeTemplate(
      AwsAccountId  => 'MyAwsAccountId',
      TemplateId    => 'MyRestrictiveResourceId',
      AliasName     => 'MyAliasName',               # OPTIONAL
      VersionNumber => 1,                           # OPTIONAL
    );

    # Results:
    my $RequestId = $DescribeTemplateResponse->RequestId;
    my $Status    = $DescribeTemplateResponse->Status;
    my $Template  = $DescribeTemplateResponse->Template;

    # Returns a L<Paws::Quicksight::DescribeTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeTemplate>

=head1 ATTRIBUTES


=head2 AliasName => Str

The alias of the template that you want to describe. If you name a
specific alias, you describe the version that the alias points to. You
can specify the latest version of the template by providing the keyword
C<$LATEST> in the C<AliasName> parameter. The keyword C<$PUBLISHED>
doesn't apply to templates.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the template that you're
describing.



=head2 B<REQUIRED> TemplateId => Str

The ID for the template.



=head2 VersionNumber => Int

(Optional) The number for the version to describe. If a
C<VersionNumber> parameter value isn't provided, the latest version of
the template is described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTemplate in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

