package Paws::LicenseManager;
  use Moose;
  sub service { 'license-manager' }
  sub signing_name { 'license-manager' }
  sub version { '2018-08-01' }
  sub target_prefix { 'AWSLicenseManager' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::AcceptGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckInLicense {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::CheckInLicense', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckoutBorrowLicense {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::CheckoutBorrowLicense', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckoutLicense {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::CheckoutLicense', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::CreateGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGrantVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::CreateGrantVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLicense {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::CreateLicense', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::CreateLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLicenseManagerReportGenerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::CreateLicenseManagerReportGenerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLicenseVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::CreateLicenseVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::CreateToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::DeleteGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLicense {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::DeleteLicense', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::DeleteLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLicenseManagerReportGenerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::DeleteLicenseManagerReportGenerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::DeleteToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExtendLicenseConsumption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ExtendLicenseConsumption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::GetAccessToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::GetGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLicense {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::GetLicense', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::GetLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLicenseManagerReportGenerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::GetLicenseManagerReportGenerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLicenseUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::GetLicenseUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::GetServiceSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociationsForLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListAssociationsForLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributedGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListDistributedGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFailuresForLicenseConfigurationOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListFailuresForLicenseConfigurationOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLicenseConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListLicenseConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLicenseManagerReportGenerators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListLicenseManagerReportGenerators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLicenses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListLicenses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLicenseSpecificationsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListLicenseSpecificationsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLicenseVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListLicenseVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReceivedGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListReceivedGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReceivedLicenses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListReceivedLicenses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceInventory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListResourceInventory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTokens {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListTokens', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsageForLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::ListUsageForLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::RejectGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLicenseConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::UpdateLicenseConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLicenseManagerReportGenerator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::UpdateLicenseManagerReportGenerator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLicenseSpecificationsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::UpdateLicenseSpecificationsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManager::UpdateServiceSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAssociationsForLicenseConfiguration {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociationsForLicenseConfiguration(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssociationsForLicenseConfiguration(@_, NextToken => $next_result->NextToken);
        push @{ $result->LicenseConfigurationAssociations }, @{ $next_result->LicenseConfigurationAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LicenseConfigurationAssociations') foreach (@{ $result->LicenseConfigurationAssociations });
        $result = $self->ListAssociationsForLicenseConfiguration(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LicenseConfigurationAssociations') foreach (@{ $result->LicenseConfigurationAssociations });
    }

    return undef
  }
  sub ListAllLicenseConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLicenseConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLicenseConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->LicenseConfigurations }, @{ $next_result->LicenseConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LicenseConfigurations') foreach (@{ $result->LicenseConfigurations });
        $result = $self->ListLicenseConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LicenseConfigurations') foreach (@{ $result->LicenseConfigurations });
    }

    return undef
  }
  sub ListAllLicenseSpecificationsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLicenseSpecificationsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLicenseSpecificationsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->LicenseSpecifications }, @{ $next_result->LicenseSpecifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LicenseSpecifications') foreach (@{ $result->LicenseSpecifications });
        $result = $self->ListLicenseSpecificationsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LicenseSpecifications') foreach (@{ $result->LicenseSpecifications });
    }

    return undef
  }
  sub ListAllResourceInventory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceInventory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceInventory(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceInventoryList }, @{ $next_result->ResourceInventoryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceInventoryList') foreach (@{ $result->ResourceInventoryList });
        $result = $self->ListResourceInventory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceInventoryList') foreach (@{ $result->ResourceInventoryList });
    }

    return undef
  }
  sub ListAllUsageForLicenseConfiguration {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsageForLicenseConfiguration(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsageForLicenseConfiguration(@_, NextToken => $next_result->NextToken);
        push @{ $result->LicenseConfigurationUsageList }, @{ $next_result->LicenseConfigurationUsageList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LicenseConfigurationUsageList') foreach (@{ $result->LicenseConfigurationUsageList });
        $result = $self->ListUsageForLicenseConfiguration(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LicenseConfigurationUsageList') foreach (@{ $result->LicenseConfigurationUsageList });
    }

    return undef
  }


  sub operations { qw/AcceptGrant CheckInLicense CheckoutBorrowLicense CheckoutLicense CreateGrant CreateGrantVersion CreateLicense CreateLicenseConfiguration CreateLicenseManagerReportGenerator CreateLicenseVersion CreateToken DeleteGrant DeleteLicense DeleteLicenseConfiguration DeleteLicenseManagerReportGenerator DeleteToken ExtendLicenseConsumption GetAccessToken GetGrant GetLicense GetLicenseConfiguration GetLicenseManagerReportGenerator GetLicenseUsage GetServiceSettings ListAssociationsForLicenseConfiguration ListDistributedGrants ListFailuresForLicenseConfigurationOperations ListLicenseConfigurations ListLicenseManagerReportGenerators ListLicenses ListLicenseSpecificationsForResource ListLicenseVersions ListReceivedGrants ListReceivedLicenses ListResourceInventory ListTagsForResource ListTokens ListUsageForLicenseConfiguration RejectGrant TagResource UntagResource UpdateLicenseConfiguration UpdateLicenseManagerReportGenerator UpdateLicenseSpecificationsForResource UpdateServiceSettings / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager - Perl Interface to AWS AWS License Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LicenseManager');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS License Manager

AWS License Manager makes it easier to manage licenses from software
vendors across multiple AWS accounts and on-premises servers.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-2018-08-01>


=head1 METHODS

=head2 AcceptGrant

=over

=item GrantArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::AcceptGrant>

Returns: a L<Paws::LicenseManager::AcceptGrantResponse> instance

Accepts the specified grant.


=head2 CheckInLicense

=over

=item LicenseConsumptionToken => Str

=item [Beneficiary => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::CheckInLicense>

Returns: a L<Paws::LicenseManager::CheckInLicenseResponse> instance

Checks in the specified license. Check in a license when it is no
longer in use.


=head2 CheckoutBorrowLicense

=over

=item ClientToken => Str

=item DigitalSignatureMethod => Str

=item Entitlements => ArrayRef[L<Paws::LicenseManager::EntitlementData>]

=item LicenseArn => Str

=item [CheckoutMetadata => ArrayRef[L<Paws::LicenseManager::Metadata>]]

=item [NodeId => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::CheckoutBorrowLicense>

Returns: a L<Paws::LicenseManager::CheckoutBorrowLicenseResponse> instance

Checks out the specified license for offline use.


=head2 CheckoutLicense

=over

=item CheckoutType => Str

=item ClientToken => Str

=item Entitlements => ArrayRef[L<Paws::LicenseManager::EntitlementData>]

=item KeyFingerprint => Str

=item ProductSKU => Str

=item [Beneficiary => Str]

=item [NodeId => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::CheckoutLicense>

Returns: a L<Paws::LicenseManager::CheckoutLicenseResponse> instance

Checks out the specified license.


=head2 CreateGrant

=over

=item AllowedOperations => ArrayRef[Str|Undef]

=item ClientToken => Str

=item GrantName => Str

=item HomeRegion => Str

=item LicenseArn => Str

=item Principals => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LicenseManager::CreateGrant>

Returns: a L<Paws::LicenseManager::CreateGrantResponse> instance

Creates a grant for the specified license. A grant shares the use of
license entitlements with specific AWS accounts.


=head2 CreateGrantVersion

=over

=item ClientToken => Str

=item GrantArn => Str

=item [AllowedOperations => ArrayRef[Str|Undef]]

=item [GrantName => Str]

=item [SourceVersion => Str]

=item [Status => Str]

=item [StatusReason => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::CreateGrantVersion>

Returns: a L<Paws::LicenseManager::CreateGrantVersionResponse> instance

Creates a new version of the specified grant.


=head2 CreateLicense

=over

=item Beneficiary => Str

=item ClientToken => Str

=item ConsumptionConfiguration => L<Paws::LicenseManager::ConsumptionConfiguration>

=item Entitlements => ArrayRef[L<Paws::LicenseManager::Entitlement>]

=item HomeRegion => Str

=item Issuer => L<Paws::LicenseManager::Issuer>

=item LicenseName => Str

=item ProductName => Str

=item ProductSKU => Str

=item Validity => L<Paws::LicenseManager::DatetimeRange>

=item [LicenseMetadata => ArrayRef[L<Paws::LicenseManager::Metadata>]]


=back

Each argument is described in detail in: L<Paws::LicenseManager::CreateLicense>

Returns: a L<Paws::LicenseManager::CreateLicenseResponse> instance

Creates a license.


=head2 CreateLicenseConfiguration

=over

=item LicenseCountingType => Str

=item Name => Str

=item [Description => Str]

=item [DisassociateWhenNotFound => Bool]

=item [LicenseCount => Int]

=item [LicenseCountHardLimit => Bool]

=item [LicenseRules => ArrayRef[Str|Undef]]

=item [ProductInformationList => ArrayRef[L<Paws::LicenseManager::ProductInformation>]]

=item [Tags => ArrayRef[L<Paws::LicenseManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::LicenseManager::CreateLicenseConfiguration>

Returns: a L<Paws::LicenseManager::CreateLicenseConfigurationResponse> instance

Creates a license configuration.

A license configuration is an abstraction of a customer license
agreement that can be consumed and enforced by License Manager.
Components include specifications for the license type (licensing by
instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy,
Dedicated Instance, Dedicated Host, or all of these), license affinity
to host (how long a license must be associated with a host), and the
number of licenses purchased and used.


=head2 CreateLicenseManagerReportGenerator

=over

=item ClientToken => Str

=item ReportContext => L<Paws::LicenseManager::ReportContext>

=item ReportFrequency => L<Paws::LicenseManager::ReportFrequency>

=item ReportGeneratorName => Str

=item Type => ArrayRef[Str|Undef]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::LicenseManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::LicenseManager::CreateLicenseManagerReportGenerator>

Returns: a L<Paws::LicenseManager::CreateLicenseManagerReportGeneratorResponse> instance

Creates a new report generator.


=head2 CreateLicenseVersion

=over

=item ClientToken => Str

=item ConsumptionConfiguration => L<Paws::LicenseManager::ConsumptionConfiguration>

=item Entitlements => ArrayRef[L<Paws::LicenseManager::Entitlement>]

=item HomeRegion => Str

=item Issuer => L<Paws::LicenseManager::Issuer>

=item LicenseArn => Str

=item LicenseName => Str

=item ProductName => Str

=item Status => Str

=item Validity => L<Paws::LicenseManager::DatetimeRange>

=item [LicenseMetadata => ArrayRef[L<Paws::LicenseManager::Metadata>]]

=item [SourceVersion => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::CreateLicenseVersion>

Returns: a L<Paws::LicenseManager::CreateLicenseVersionResponse> instance

Creates a new version of the specified license.


=head2 CreateToken

=over

=item ClientToken => Str

=item LicenseArn => Str

=item [ExpirationInDays => Int]

=item [RoleArns => ArrayRef[Str|Undef]]

=item [TokenProperties => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LicenseManager::CreateToken>

Returns: a L<Paws::LicenseManager::CreateTokenResponse> instance

Creates a long-lived token.

A refresh token is a JWT token used to get an access token. With an
access token, you can call AssumeRoleWithWebIdentity to get role
credentials that you can use to call License Manager to manage the
specified license.


=head2 DeleteGrant

=over

=item GrantArn => Str

=item Version => Str

=item [StatusReason => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::DeleteGrant>

Returns: a L<Paws::LicenseManager::DeleteGrantResponse> instance

Deletes the specified grant.


=head2 DeleteLicense

=over

=item LicenseArn => Str

=item SourceVersion => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::DeleteLicense>

Returns: a L<Paws::LicenseManager::DeleteLicenseResponse> instance

Deletes the specified license.


=head2 DeleteLicenseConfiguration

=over

=item LicenseConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::DeleteLicenseConfiguration>

Returns: a L<Paws::LicenseManager::DeleteLicenseConfigurationResponse> instance

Deletes the specified license configuration.

You cannot delete a license configuration that is in use.


=head2 DeleteLicenseManagerReportGenerator

=over

=item LicenseManagerReportGeneratorArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::DeleteLicenseManagerReportGenerator>

Returns: a L<Paws::LicenseManager::DeleteLicenseManagerReportGeneratorResponse> instance

Delete an existing report generator.

This action deletes the report generator, which stops it from
generating future reports and cannot be reversed. However, the previous
reports from this generator will remain in your S3 bucket.


=head2 DeleteToken

=over

=item TokenId => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::DeleteToken>

Returns: a L<Paws::LicenseManager::DeleteTokenResponse> instance

Deletes the specified token. Must be called in the license home Region.


=head2 ExtendLicenseConsumption

=over

=item LicenseConsumptionToken => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ExtendLicenseConsumption>

Returns: a L<Paws::LicenseManager::ExtendLicenseConsumptionResponse> instance

Extends the expiration date for license consumption.


=head2 GetAccessToken

=over

=item Token => Str

=item [TokenProperties => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LicenseManager::GetAccessToken>

Returns: a L<Paws::LicenseManager::GetAccessTokenResponse> instance

Gets a temporary access token to use with AssumeRoleWithWebIdentity.
Access tokens are valid for one hour.


=head2 GetGrant

=over

=item GrantArn => Str

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::GetGrant>

Returns: a L<Paws::LicenseManager::GetGrantResponse> instance

Gets detailed information about the specified grant.


=head2 GetLicense

=over

=item LicenseArn => Str

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::GetLicense>

Returns: a L<Paws::LicenseManager::GetLicenseResponse> instance

Gets detailed information about the specified license.


=head2 GetLicenseConfiguration

=over

=item LicenseConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::GetLicenseConfiguration>

Returns: a L<Paws::LicenseManager::GetLicenseConfigurationResponse> instance

Gets detailed information about the specified license configuration.


=head2 GetLicenseManagerReportGenerator

=over

=item LicenseManagerReportGeneratorArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::GetLicenseManagerReportGenerator>

Returns: a L<Paws::LicenseManager::GetLicenseManagerReportGeneratorResponse> instance

Gets information on the specified report generator.


=head2 GetLicenseUsage

=over

=item LicenseArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::GetLicenseUsage>

Returns: a L<Paws::LicenseManager::GetLicenseUsageResponse> instance

Gets detailed information about the usage of the specified license.


=head2 GetServiceSettings






Each argument is described in detail in: L<Paws::LicenseManager::GetServiceSettings>

Returns: a L<Paws::LicenseManager::GetServiceSettingsResponse> instance

Gets the License Manager settings for the current Region.


=head2 ListAssociationsForLicenseConfiguration

=over

=item LicenseConfigurationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListAssociationsForLicenseConfiguration>

Returns: a L<Paws::LicenseManager::ListAssociationsForLicenseConfigurationResponse> instance

Lists the resource associations for the specified license
configuration.

Resource associations need not consume licenses from a license
configuration. For example, an AMI or a stopped instance might not
consume a license (depending on the license rules).


=head2 ListDistributedGrants

=over

=item [Filters => ArrayRef[L<Paws::LicenseManager::Filter>]]

=item [GrantArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListDistributedGrants>

Returns: a L<Paws::LicenseManager::ListDistributedGrantsResponse> instance

Lists the grants distributed for the specified license.


=head2 ListFailuresForLicenseConfigurationOperations

=over

=item LicenseConfigurationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListFailuresForLicenseConfigurationOperations>

Returns: a L<Paws::LicenseManager::ListFailuresForLicenseConfigurationOperationsResponse> instance

Lists the license configuration operations that failed.


=head2 ListLicenseConfigurations

=over

=item [Filters => ArrayRef[L<Paws::LicenseManager::Filter>]]

=item [LicenseConfigurationArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListLicenseConfigurations>

Returns: a L<Paws::LicenseManager::ListLicenseConfigurationsResponse> instance

Lists the license configurations for your account.


=head2 ListLicenseManagerReportGenerators

=over

=item [Filters => ArrayRef[L<Paws::LicenseManager::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListLicenseManagerReportGenerators>

Returns: a L<Paws::LicenseManager::ListLicenseManagerReportGeneratorsResponse> instance

Lists the report generators for your account.


=head2 ListLicenses

=over

=item [Filters => ArrayRef[L<Paws::LicenseManager::Filter>]]

=item [LicenseArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListLicenses>

Returns: a L<Paws::LicenseManager::ListLicensesResponse> instance

Lists the licenses for your account.


=head2 ListLicenseSpecificationsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListLicenseSpecificationsForResource>

Returns: a L<Paws::LicenseManager::ListLicenseSpecificationsForResourceResponse> instance

Describes the license configurations for the specified resource.


=head2 ListLicenseVersions

=over

=item LicenseArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListLicenseVersions>

Returns: a L<Paws::LicenseManager::ListLicenseVersionsResponse> instance

Lists all versions of the specified license.


=head2 ListReceivedGrants

=over

=item [Filters => ArrayRef[L<Paws::LicenseManager::Filter>]]

=item [GrantArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListReceivedGrants>

Returns: a L<Paws::LicenseManager::ListReceivedGrantsResponse> instance

Lists grants that are received but not accepted.


=head2 ListReceivedLicenses

=over

=item [Filters => ArrayRef[L<Paws::LicenseManager::Filter>]]

=item [LicenseArns => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListReceivedLicenses>

Returns: a L<Paws::LicenseManager::ListReceivedLicensesResponse> instance

Lists received licenses.


=head2 ListResourceInventory

=over

=item [Filters => ArrayRef[L<Paws::LicenseManager::InventoryFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListResourceInventory>

Returns: a L<Paws::LicenseManager::ListResourceInventoryResponse> instance

Lists resources managed using Systems Manager inventory.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListTagsForResource>

Returns: a L<Paws::LicenseManager::ListTagsForResourceResponse> instance

Lists the tags for the specified license configuration.


=head2 ListTokens

=over

=item [Filters => ArrayRef[L<Paws::LicenseManager::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TokenIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListTokens>

Returns: a L<Paws::LicenseManager::ListTokensResponse> instance

Lists your tokens.


=head2 ListUsageForLicenseConfiguration

=over

=item LicenseConfigurationArn => Str

=item [Filters => ArrayRef[L<Paws::LicenseManager::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::ListUsageForLicenseConfiguration>

Returns: a L<Paws::LicenseManager::ListUsageForLicenseConfigurationResponse> instance

Lists all license usage records for a license configuration, displaying
license consumption details by resource at a selected point in time.
Use this action to audit the current license consumption for any
license inventory and configuration.


=head2 RejectGrant

=over

=item GrantArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManager::RejectGrant>

Returns: a L<Paws::LicenseManager::RejectGrantResponse> instance

Rejects the specified grant.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::LicenseManager::Tag>]


=back

Each argument is described in detail in: L<Paws::LicenseManager::TagResource>

Returns: a L<Paws::LicenseManager::TagResourceResponse> instance

Adds the specified tags to the specified license configuration.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LicenseManager::UntagResource>

Returns: a L<Paws::LicenseManager::UntagResourceResponse> instance

Removes the specified tags from the specified license configuration.


=head2 UpdateLicenseConfiguration

=over

=item LicenseConfigurationArn => Str

=item [Description => Str]

=item [DisassociateWhenNotFound => Bool]

=item [LicenseConfigurationStatus => Str]

=item [LicenseCount => Int]

=item [LicenseCountHardLimit => Bool]

=item [LicenseRules => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [ProductInformationList => ArrayRef[L<Paws::LicenseManager::ProductInformation>]]


=back

Each argument is described in detail in: L<Paws::LicenseManager::UpdateLicenseConfiguration>

Returns: a L<Paws::LicenseManager::UpdateLicenseConfigurationResponse> instance

Modifies the attributes of an existing license configuration.


=head2 UpdateLicenseManagerReportGenerator

=over

=item ClientToken => Str

=item LicenseManagerReportGeneratorArn => Str

=item ReportContext => L<Paws::LicenseManager::ReportContext>

=item ReportFrequency => L<Paws::LicenseManager::ReportFrequency>

=item ReportGeneratorName => Str

=item Type => ArrayRef[Str|Undef]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::UpdateLicenseManagerReportGenerator>

Returns: a L<Paws::LicenseManager::UpdateLicenseManagerReportGeneratorResponse> instance

Updates a report generator.

After you make changes to a report generator, it will start generating
new reports within 60 minutes of being updated.


=head2 UpdateLicenseSpecificationsForResource

=over

=item ResourceArn => Str

=item [AddLicenseSpecifications => ArrayRef[L<Paws::LicenseManager::LicenseSpecification>]]

=item [RemoveLicenseSpecifications => ArrayRef[L<Paws::LicenseManager::LicenseSpecification>]]


=back

Each argument is described in detail in: L<Paws::LicenseManager::UpdateLicenseSpecificationsForResource>

Returns: a L<Paws::LicenseManager::UpdateLicenseSpecificationsForResourceResponse> instance

Adds or removes the specified license configurations for the specified
AWS resource.

You can update the license specifications of AMIs, instances, and
hosts. You cannot update the license specifications for launch
templates and AWS CloudFormation templates, as they send license
configurations to the operation that creates the resource.


=head2 UpdateServiceSettings

=over

=item [EnableCrossAccountsDiscovery => Bool]

=item [OrganizationConfiguration => L<Paws::LicenseManager::OrganizationConfiguration>]

=item [S3BucketArn => Str]

=item [SnsTopicArn => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManager::UpdateServiceSettings>

Returns: a L<Paws::LicenseManager::UpdateServiceSettingsResponse> instance

Updates License Manager settings for the current Region.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAssociationsForLicenseConfiguration(sub { },LicenseConfigurationArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssociationsForLicenseConfiguration(LicenseConfigurationArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LicenseConfigurationAssociations, passing the object as the first parameter, and the string 'LicenseConfigurationAssociations' as the second parameter 

If not, it will return a a L<Paws::LicenseManager::ListAssociationsForLicenseConfigurationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLicenseConfigurations(sub { },[Filters => ArrayRef[L<Paws::LicenseManager::Filter>], LicenseConfigurationArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllLicenseConfigurations([Filters => ArrayRef[L<Paws::LicenseManager::Filter>], LicenseConfigurationArns => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LicenseConfigurations, passing the object as the first parameter, and the string 'LicenseConfigurations' as the second parameter 

If not, it will return a a L<Paws::LicenseManager::ListLicenseConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLicenseSpecificationsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllLicenseSpecificationsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LicenseSpecifications, passing the object as the first parameter, and the string 'LicenseSpecifications' as the second parameter 

If not, it will return a a L<Paws::LicenseManager::ListLicenseSpecificationsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceInventory(sub { },[Filters => ArrayRef[L<Paws::LicenseManager::InventoryFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllResourceInventory([Filters => ArrayRef[L<Paws::LicenseManager::InventoryFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceInventoryList, passing the object as the first parameter, and the string 'ResourceInventoryList' as the second parameter 

If not, it will return a a L<Paws::LicenseManager::ListResourceInventoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsageForLicenseConfiguration(sub { },LicenseConfigurationArn => Str, [Filters => ArrayRef[L<Paws::LicenseManager::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllUsageForLicenseConfiguration(LicenseConfigurationArn => Str, [Filters => ArrayRef[L<Paws::LicenseManager::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LicenseConfigurationUsageList, passing the object as the first parameter, and the string 'LicenseConfigurationUsageList' as the second parameter 

If not, it will return a a L<Paws::LicenseManager::ListUsageForLicenseConfigurationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

