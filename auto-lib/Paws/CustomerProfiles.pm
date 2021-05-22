package Paws::CustomerProfiles;
  use Moose;
  sub service { 'profile' }
  sub signing_name { 'profile' }
  sub version { '2020-08-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddProfileKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::AddProfileKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::CreateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfileKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteProfileKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfileObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteProfileObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfileObjectType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteProfileObjectType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMatches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetMatches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfileObjectType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetProfileObjectType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfileObjectTypeTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetProfileObjectTypeTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListAccountIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListProfileObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileObjectTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListProfileObjectTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileObjectTypeTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListProfileObjectTypeTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergeProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::MergeProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::PutIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProfileObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::PutProfileObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProfileObjectType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::PutProfileObjectType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::SearchProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::UpdateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::UpdateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AddProfileKey CreateDomain CreateProfile DeleteDomain DeleteIntegration DeleteProfile DeleteProfileKey DeleteProfileObject DeleteProfileObjectType GetDomain GetIntegration GetMatches GetProfileObjectType GetProfileObjectTypeTemplate ListAccountIntegrations ListDomains ListIntegrations ListProfileObjects ListProfileObjectTypes ListProfileObjectTypeTemplates ListTagsForResource MergeProfiles PutIntegration PutProfileObject PutProfileObjectType SearchProfiles TagResource UntagResource UpdateDomain UpdateProfile / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles - Perl Interface to AWS Amazon Connect Customer Profiles

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CustomerProfiles');
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

Amazon Connect Customer Profiles

Welcome to the Amazon Connect Customer Profiles API Reference. This
guide provides information about the Amazon Connect Customer Profiles
API, including supported operations, data types, parameters, and
schemas.

Amazon Connect Customer Profiles is a unified customer profile for your
contact center that has pre-built connectors powered by AppFlow that
make it easy to combine customer information from third party
applications, such as Salesforce (CRM), ServiceNow (ITSM), and your
enterprise resource planning (ERP), with contact history from your
Amazon Connect contact center.

If you're new to Amazon Connect , you might find it helpful to also
review the Amazon Connect Administrator Guide
(https://docs.aws.amazon.com/connect/latest/adminguide/what-is-amazon-connect.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile-2020-08-15>


=head1 METHODS

=head2 AddProfileKey

=over

=item DomainName => Str

=item KeyName => Str

=item ProfileId => Str

=item Values => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::AddProfileKey>

Returns: a L<Paws::CustomerProfiles::AddProfileKeyResponse> instance

Associates a new key value with a specific profile, such as a Contact
Trace Record (CTR) ContactId.

A profile object can have a single unique key and any number of
additional keys that can be used to identify the profile that it
belongs to.


=head2 CreateDomain

=over

=item DefaultExpirationDays => Int

=item DomainName => Str

=item [DeadLetterQueueUrl => Str]

=item [DefaultEncryptionKey => Str]

=item [Matching => L<Paws::CustomerProfiles::MatchingRequest>]

=item [Tags => L<Paws::CustomerProfiles::TagMap>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::CreateDomain>

Returns: a L<Paws::CustomerProfiles::CreateDomainResponse> instance

Creates a domain, which is a container for all customer data, such as
customer profile attributes, object types, profile keys, and encryption
keys. You can create multiple domains, and each domain can have
multiple third-party integrations.

Each Amazon Connect instance can be associated with only one domain.
Multiple Amazon Connect instances can be associated with one domain.


=head2 CreateProfile

=over

=item DomainName => Str

=item [AccountNumber => Str]

=item [AdditionalInformation => Str]

=item [Address => L<Paws::CustomerProfiles::Address>]

=item [Attributes => L<Paws::CustomerProfiles::Attributes>]

=item [BillingAddress => L<Paws::CustomerProfiles::Address>]

=item [BirthDate => Str]

=item [BusinessEmailAddress => Str]

=item [BusinessName => Str]

=item [BusinessPhoneNumber => Str]

=item [EmailAddress => Str]

=item [FirstName => Str]

=item [Gender => Str]

=item [HomePhoneNumber => Str]

=item [LastName => Str]

=item [MailingAddress => L<Paws::CustomerProfiles::Address>]

=item [MiddleName => Str]

=item [MobilePhoneNumber => Str]

=item [PartyType => Str]

=item [PersonalEmailAddress => Str]

=item [PhoneNumber => Str]

=item [ShippingAddress => L<Paws::CustomerProfiles::Address>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::CreateProfile>

Returns: a L<Paws::CustomerProfiles::CreateProfileResponse> instance

Creates a standard profile.

A standard profile represents the following attributes for a customer
profile in a domain.


=head2 DeleteDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteDomain>

Returns: a L<Paws::CustomerProfiles::DeleteDomainResponse> instance

Deletes a specific domain and all of its customer data, such as
customer profile attributes and their related objects.


=head2 DeleteIntegration

=over

=item DomainName => Str

=item Uri => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteIntegration>

Returns: a L<Paws::CustomerProfiles::DeleteIntegrationResponse> instance

Removes an integration from a specific domain.


=head2 DeleteProfile

=over

=item DomainName => Str

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteProfile>

Returns: a L<Paws::CustomerProfiles::DeleteProfileResponse> instance

Deletes the standard customer profile and all data pertaining to the
profile.


=head2 DeleteProfileKey

=over

=item DomainName => Str

=item KeyName => Str

=item ProfileId => Str

=item Values => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteProfileKey>

Returns: a L<Paws::CustomerProfiles::DeleteProfileKeyResponse> instance

Removes a searchable key from a customer profile.


=head2 DeleteProfileObject

=over

=item DomainName => Str

=item ObjectTypeName => Str

=item ProfileId => Str

=item ProfileObjectUniqueKey => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteProfileObject>

Returns: a L<Paws::CustomerProfiles::DeleteProfileObjectResponse> instance

Removes an object associated with a profile of a given
ProfileObjectType.


=head2 DeleteProfileObjectType

=over

=item DomainName => Str

=item ObjectTypeName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteProfileObjectType>

Returns: a L<Paws::CustomerProfiles::DeleteProfileObjectTypeResponse> instance

Removes a ProfileObjectType from a specific domain as well as removes
all the ProfileObjects of that type. It also disables integrations from
this specific ProfileObjectType. In addition, it scrubs all of the
fields of the standard profile that were populated from this
ProfileObjectType.


=head2 GetDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetDomain>

Returns: a L<Paws::CustomerProfiles::GetDomainResponse> instance

Returns information about a specific domain.


=head2 GetIntegration

=over

=item DomainName => Str

=item Uri => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetIntegration>

Returns: a L<Paws::CustomerProfiles::GetIntegrationResponse> instance

Returns an integration for a domain.


=head2 GetMatches

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetMatches>

Returns: a L<Paws::CustomerProfiles::GetMatchesResponse> instance

This API is in preview release for Amazon Connect and subject to
change.

Before calling this API, use CreateDomain
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html)
or UpdateDomain
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html)
to enable identity resolution: set C<Matching> to true.

GetMatches returns potentially matching profiles, based on the results
of the latest run of a machine learning process.

Amazon Connect runs a batch process every Saturday at 12AM UTC to
identify matching profiles. The results are returned up to seven days
after the Saturday run.

Amazon Connect uses the following profile attributes to identify
matches:

=over

=item *

PhoneNumber

=item *

HomePhoneNumber

=item *

BusinessPhoneNumber

=item *

MobilePhoneNumber

=item *

EmailAddress

=item *

PersonalEmailAddress

=item *

BusinessEmailAddress

=item *

FullName

=item *

BusinessName

=back



=head2 GetProfileObjectType

=over

=item DomainName => Str

=item ObjectTypeName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetProfileObjectType>

Returns: a L<Paws::CustomerProfiles::GetProfileObjectTypeResponse> instance

Returns the object types for a specific domain.


=head2 GetProfileObjectTypeTemplate

=over

=item TemplateId => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetProfileObjectTypeTemplate>

Returns: a L<Paws::CustomerProfiles::GetProfileObjectTypeTemplateResponse> instance

Returns the template information for a specific object type.

A template is a predefined ProfileObjectType, such as
E<ldquo>Salesforce-AccountE<rdquo> or
E<ldquo>Salesforce-Contact.E<rdquo> When a user sends a ProfileObject,
using the PutProfileObject API, with an ObjectTypeName that matches one
of the TemplateIds, it uses the mappings from the template.


=head2 ListAccountIntegrations

=over

=item Uri => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListAccountIntegrations>

Returns: a L<Paws::CustomerProfiles::ListAccountIntegrationsResponse> instance

Lists all of the integrations associated to a specific URI in the AWS
account.


=head2 ListDomains

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListDomains>

Returns: a L<Paws::CustomerProfiles::ListDomainsResponse> instance

Returns a list of all the domains for an AWS account that have been
created.


=head2 ListIntegrations

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListIntegrations>

Returns: a L<Paws::CustomerProfiles::ListIntegrationsResponse> instance

Lists all of the integrations in your domain.


=head2 ListProfileObjects

=over

=item DomainName => Str

=item ObjectTypeName => Str

=item ProfileId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListProfileObjects>

Returns: a L<Paws::CustomerProfiles::ListProfileObjectsResponse> instance

Returns a list of objects associated with a profile of a given
ProfileObjectType.


=head2 ListProfileObjectTypes

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListProfileObjectTypes>

Returns: a L<Paws::CustomerProfiles::ListProfileObjectTypesResponse> instance

Lists all of the templates available within the service.


=head2 ListProfileObjectTypeTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListProfileObjectTypeTemplates>

Returns: a L<Paws::CustomerProfiles::ListProfileObjectTypeTemplatesResponse> instance

Lists all of the template information for object types.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListTagsForResource>

Returns: a L<Paws::CustomerProfiles::ListTagsForResourceResponse> instance

Displays the tags associated with an Amazon Connect Customer Profiles
resource. In Connect Customer Profiles, domains, profile object types,
and integrations can be tagged.


=head2 MergeProfiles

=over

=item DomainName => Str

=item MainProfileId => Str

=item ProfileIdsToBeMerged => ArrayRef[Str|Undef]

=item [FieldSourceProfileIds => L<Paws::CustomerProfiles::FieldSourceProfileIds>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::MergeProfiles>

Returns: a L<Paws::CustomerProfiles::MergeProfilesResponse> instance

This API is in preview release for Amazon Connect and subject to
change.

Runs an AWS Lambda job that does the following:

=over

=item 1.

All the profileKeys in the C<ProfileToBeMerged> will be moved to the
main profile.

=item 2.

All the objects in the C<ProfileToBeMerged> will be moved to the main
profile.

=item 3.

All the C<ProfileToBeMerged> will be deleted at the end.

=item 4.

All the profileKeys in the C<ProfileIdsToBeMerged> will be moved to the
main profile.

=item 5.

Standard fields are merged as follows:

=over

=item 1.

Fields are always "union"-ed if there are no conflicts in standard
fields or attributeKeys.

=item 2.

When there are conflicting fields:

=over

=item 1.

If no C<SourceProfileIds> entry is specified, the main Profile value is
always taken.

=item 2.

If a C<SourceProfileIds> entry is specified, the specified profileId is
always taken, even if it is a NULL value.

=back

=back

=back

You can use MergeProfiles together with GetMatches
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html),
which returns potentially matching profiles, or use it with the results
of another matching system. After profiles have been merged, they
cannot be separated (unmerged).


=head2 PutIntegration

=over

=item DomainName => Str

=item ObjectTypeName => Str

=item [FlowDefinition => L<Paws::CustomerProfiles::FlowDefinition>]

=item [Tags => L<Paws::CustomerProfiles::TagMap>]

=item [Uri => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::PutIntegration>

Returns: a L<Paws::CustomerProfiles::PutIntegrationResponse> instance

Adds an integration between the service and a third-party service,
which includes Amazon AppFlow and Amazon Connect.

An integration can belong to only one domain.


=head2 PutProfileObject

=over

=item DomainName => Str

=item Object => Str

=item ObjectTypeName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::PutProfileObject>

Returns: a L<Paws::CustomerProfiles::PutProfileObjectResponse> instance

Adds additional objects to customer profiles of a given ObjectType.

When adding a specific profile object, like a Contact Trace Record
(CTR), an inferred profile can get created if it is not mapped to an
existing profile. The resulting profile will only have a phone number
populated in the standard ProfileObject. Any additional CTRs with the
same phone number will be mapped to the same inferred profile.

When a ProfileObject is created and if a ProfileObjectType already
exists for the ProfileObject, it will provide data to a standard
profile depending on the ProfileObjectType definition.

PutProfileObject needs an ObjectType, which can be created using
PutProfileObjectType.


=head2 PutProfileObjectType

=over

=item Description => Str

=item DomainName => Str

=item ObjectTypeName => Str

=item [AllowProfileCreation => Bool]

=item [EncryptionKey => Str]

=item [ExpirationDays => Int]

=item [Fields => L<Paws::CustomerProfiles::FieldMap>]

=item [Keys => L<Paws::CustomerProfiles::KeyMap>]

=item [Tags => L<Paws::CustomerProfiles::TagMap>]

=item [TemplateId => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::PutProfileObjectType>

Returns: a L<Paws::CustomerProfiles::PutProfileObjectTypeResponse> instance

Defines a ProfileObjectType.


=head2 SearchProfiles

=over

=item DomainName => Str

=item KeyName => Str

=item Values => ArrayRef[Str|Undef]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::SearchProfiles>

Returns: a L<Paws::CustomerProfiles::SearchProfilesResponse> instance

Searches for profiles within a specific domain name using name, phone
number, email address, account number, or a custom defined index.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::CustomerProfiles::TagMap>


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::TagResource>

Returns: a L<Paws::CustomerProfiles::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified Amazon
Connect Customer Profiles resource. Tags can help you organize and
categorize your resources. You can also use them to scope user
permissions by granting a user permission to access or change only
resources with certain tag values. In Connect Customer Profiles,
domains, profile object types, and integrations can be tagged.

Tags don't have any semantic meaning to AWS and are interpreted
strictly as strings of characters.

You can use the TagResource action with a resource that already has
tags. If you specify a new tag key, this tag is appended to the list of
tags associated with the resource. If you specify a tag key that is
already associated with the resource, the new tag value that you
specify replaces the previous value for that tag.

You can associate as many as 50 tags with a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::UntagResource>

Returns: a L<Paws::CustomerProfiles::UntagResourceResponse> instance

Removes one or more tags from the specified Amazon Connect Customer
Profiles resource. In Connect Customer Profiles, domains, profile
object types, and integrations can be tagged.


=head2 UpdateDomain

=over

=item DomainName => Str

=item [DeadLetterQueueUrl => Str]

=item [DefaultEncryptionKey => Str]

=item [DefaultExpirationDays => Int]

=item [Matching => L<Paws::CustomerProfiles::MatchingRequest>]

=item [Tags => L<Paws::CustomerProfiles::TagMap>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::UpdateDomain>

Returns: a L<Paws::CustomerProfiles::UpdateDomainResponse> instance

Updates the properties of a domain, including creating or selecting a
dead letter queue or an encryption key.

After a domain is created, the name canE<rsquo>t be changed.


=head2 UpdateProfile

=over

=item DomainName => Str

=item ProfileId => Str

=item [AccountNumber => Str]

=item [AdditionalInformation => Str]

=item [Address => L<Paws::CustomerProfiles::UpdateAddress>]

=item [Attributes => L<Paws::CustomerProfiles::UpdateAttributes>]

=item [BillingAddress => L<Paws::CustomerProfiles::UpdateAddress>]

=item [BirthDate => Str]

=item [BusinessEmailAddress => Str]

=item [BusinessName => Str]

=item [BusinessPhoneNumber => Str]

=item [EmailAddress => Str]

=item [FirstName => Str]

=item [Gender => Str]

=item [HomePhoneNumber => Str]

=item [LastName => Str]

=item [MailingAddress => L<Paws::CustomerProfiles::UpdateAddress>]

=item [MiddleName => Str]

=item [MobilePhoneNumber => Str]

=item [PartyType => Str]

=item [PersonalEmailAddress => Str]

=item [PhoneNumber => Str]

=item [ShippingAddress => L<Paws::CustomerProfiles::UpdateAddress>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::UpdateProfile>

Returns: a L<Paws::CustomerProfiles::UpdateProfileResponse> instance

Updates the properties of a profile. The ProfileId is required for
updating a customer profile.

When calling the UpdateProfile API, specifying an empty string value
means that any existing value will be removed. Not specifying a string
value means that any value already there will be kept.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

