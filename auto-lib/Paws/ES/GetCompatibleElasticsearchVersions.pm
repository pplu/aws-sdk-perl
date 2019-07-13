
package Paws::ES::GetCompatibleElasticsearchVersions;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domainName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCompatibleElasticsearchVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/compatibleVersions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::GetCompatibleElasticsearchVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::GetCompatibleElasticsearchVersions - Arguments for method GetCompatibleElasticsearchVersions on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCompatibleElasticsearchVersions on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method GetCompatibleElasticsearchVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCompatibleElasticsearchVersions.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $GetCompatibleElasticsearchVersionsResponse =
      $es->GetCompatibleElasticsearchVersions(
      DomainName => 'MyDomainName',    # OPTIONAL
      );

    # Results:
    my $CompatibleElasticsearchVersions =
      $GetCompatibleElasticsearchVersionsResponse
      ->CompatibleElasticsearchVersions;

    # Returns a L<Paws::ES::GetCompatibleElasticsearchVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/GetCompatibleElasticsearchVersions>

=head1 ATTRIBUTES


=head2 DomainName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCompatibleElasticsearchVersions in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

