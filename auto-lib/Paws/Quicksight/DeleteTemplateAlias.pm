
package Paws::Quicksight::DeleteTemplateAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AliasName', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTemplateAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DeleteTemplateAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteTemplateAlias - Arguments for method DeleteTemplateAlias on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTemplateAlias on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DeleteTemplateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTemplateAlias.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DeleteTemplateAliasResponse = $quicksight->DeleteTemplateAlias(
      AliasName    => 'MyAliasName',
      AwsAccountId => 'MyAwsAccountId',
      TemplateId   => 'MyRestrictiveResourceId',

    );

    # Results:
    my $AliasName  = $DeleteTemplateAliasResponse->AliasName;
    my $Arn        = $DeleteTemplateAliasResponse->Arn;
    my $RequestId  = $DeleteTemplateAliasResponse->RequestId;
    my $Status     = $DeleteTemplateAliasResponse->Status;
    my $TemplateId = $DeleteTemplateAliasResponse->TemplateId;

    # Returns a L<Paws::Quicksight::DeleteTemplateAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DeleteTemplateAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasName => Str

The alias of the template that you want to delete. If you provide a
specific alias, you delete the version that the alias points to. You
can specify the latest version of the template by providing the keyword
C<$LATEST> in the C<AliasName> parameter.



=head2 B<REQUIRED> AwsAccountId => Str

AWS account ID that contains the template alias you are deleting.



=head2 B<REQUIRED> TemplateId => Str

An ID for the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTemplateAlias in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

