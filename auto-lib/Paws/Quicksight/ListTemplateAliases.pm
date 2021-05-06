
package Paws::Quicksight::ListTemplateAliases;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-result');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTemplateAliases');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/templates/{TemplateId}/aliases');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::ListTemplateAliasesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListTemplateAliases - Arguments for method ListTemplateAliases on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTemplateAliases on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method ListTemplateAliases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTemplateAliases.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $ListTemplateAliasesResponse = $quicksight->ListTemplateAliases(
      AwsAccountId => 'MyAwsAccountId',
      TemplateId   => 'MyRestrictiveResourceId',
      MaxResults   => 1,                           # OPTIONAL
      NextToken    => 'MyString',                  # OPTIONAL
    );

    # Results:
    my $NextToken         = $ListTemplateAliasesResponse->NextToken;
    my $RequestId         = $ListTemplateAliasesResponse->RequestId;
    my $Status            = $ListTemplateAliasesResponse->Status;
    my $TemplateAliasList = $ListTemplateAliasesResponse->TemplateAliasList;

    # Returns a L<Paws::Quicksight::ListTemplateAliasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/ListTemplateAliases>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the template aliases that
you're listing.



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.



=head2 B<REQUIRED> TemplateId => Str

The ID for the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTemplateAliases in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

