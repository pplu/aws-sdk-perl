
package Paws::MediaPackageVod::ListPackagingConfigurations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PackagingGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'packagingGroupId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPackagingConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packaging_configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageVod::ListPackagingConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::ListPackagingConfigurations - Arguments for method ListPackagingConfigurations on L<Paws::MediaPackageVod>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPackagingConfigurations on the
L<AWS Elemental MediaPackage VOD|Paws::MediaPackageVod> service. Use the attributes of this class
as arguments to method ListPackagingConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPackagingConfigurations.

=head1 SYNOPSIS

    my $mediapackage-vod = Paws->service('MediaPackageVod');
    my $ListPackagingConfigurationsResponse =
      $mediapackage -vod->ListPackagingConfigurations(
      MaxResults       => 1,               # OPTIONAL
      NextToken        => 'My__string',    # OPTIONAL
      PackagingGroupId => 'My__string',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListPackagingConfigurationsResponse->NextToken;
    my $PackagingConfigurations =
      $ListPackagingConfigurationsResponse->PackagingConfigurations;

# Returns a L<Paws::MediaPackageVod::ListPackagingConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod/ListPackagingConfigurations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Upper bound on number of records to return.



=head2 NextToken => Str

A token used to resume pagination from the end of a previous request.



=head2 PackagingGroupId => Str

Returns MediaPackage VOD PackagingConfigurations associated with the
specified PackagingGroup.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPackagingConfigurations in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

