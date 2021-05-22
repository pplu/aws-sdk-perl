
package Paws::MediaPackageVod::UpdatePackagingGroup;
  use Moose;
  has Authorization => (is => 'ro', isa => 'Paws::MediaPackageVod::Authorization', traits => ['NameInRequest'], request_name => 'authorization');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePackagingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packaging_groups/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageVod::UpdatePackagingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::UpdatePackagingGroup - Arguments for method UpdatePackagingGroup on L<Paws::MediaPackageVod>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePackagingGroup on the
L<AWS Elemental MediaPackage VOD|Paws::MediaPackageVod> service. Use the attributes of this class
as arguments to method UpdatePackagingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePackagingGroup.

=head1 SYNOPSIS

    my $mediapackage-vod = Paws->service('MediaPackageVod');
    my $UpdatePackagingGroupResponse = $mediapackage -vod->UpdatePackagingGroup(
      Id            => 'My__string',
      Authorization => {
        CdnIdentifierSecret => 'My__string',
        SecretsRoleArn      => 'My__string',

      },    # OPTIONAL
    );

    # Results:
    my $Arn              = $UpdatePackagingGroupResponse->Arn;
    my $Authorization    = $UpdatePackagingGroupResponse->Authorization;
    my $DomainName       = $UpdatePackagingGroupResponse->DomainName;
    my $EgressAccessLogs = $UpdatePackagingGroupResponse->EgressAccessLogs;
    my $Id               = $UpdatePackagingGroupResponse->Id;
    my $Tags             = $UpdatePackagingGroupResponse->Tags;

    # Returns a L<Paws::MediaPackageVod::UpdatePackagingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod/UpdatePackagingGroup>

=head1 ATTRIBUTES


=head2 Authorization => L<Paws::MediaPackageVod::Authorization>





=head2 B<REQUIRED> Id => Str

The ID of a MediaPackage VOD PackagingGroup resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePackagingGroup in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

