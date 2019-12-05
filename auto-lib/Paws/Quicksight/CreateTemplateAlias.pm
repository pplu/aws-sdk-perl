
package Paws::Quicksight::CreateTemplateAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AliasName', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateId', required => 1);
  has TemplateVersionNumber => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTemplateAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::CreateTemplateAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateTemplateAlias - Arguments for method CreateTemplateAlias on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTemplateAlias on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateTemplateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTemplateAlias.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateTemplateAliasResponse = $quicksight->CreateTemplateAlias(
      AliasName             => 'MyAliasName',
      AwsAccountId          => 'MyAwsAccountId',
      TemplateId            => 'MyRestrictiveResourceId',
      TemplateVersionNumber => 1,

    );

    # Results:
    my $RequestId     = $CreateTemplateAliasResponse->RequestId;
    my $Status        = $CreateTemplateAliasResponse->Status;
    my $TemplateAlias = $CreateTemplateAliasResponse->TemplateAlias;

    # Returns a L<Paws::Quicksight::CreateTemplateAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateTemplateAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasName => Str

The name that you want to give to the template alias that you're
creating. Aliases that start with C<$> are reserved by QuickSight.



=head2 B<REQUIRED> AwsAccountId => Str

AWS account ID that contains the template you are aliasing.



=head2 B<REQUIRED> TemplateId => Str

An ID for the template.



=head2 B<REQUIRED> TemplateVersionNumber => Int

The version number of the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTemplateAlias in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

