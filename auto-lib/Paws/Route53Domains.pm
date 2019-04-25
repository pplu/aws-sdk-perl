package Paws::Route53Domains;
  use Moose;
  sub service { 'route53domains' }
  sub signing_name { 'route53domains' }
  sub version { '2014-05-15' }
  sub target_prefix { 'Route53Domains_v20140515' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CheckDomainAvailability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::CheckDomainAvailability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckDomainTransferability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::CheckDomainTransferability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTagsForDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::DeleteTagsForDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableDomainAutoRenew {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::DisableDomainAutoRenew', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableDomainTransferLock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::DisableDomainTransferLock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableDomainAutoRenew {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::EnableDomainAutoRenew', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableDomainTransferLock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::EnableDomainTransferLock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContactReachabilityStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::GetContactReachabilityStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainDetail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::GetDomainDetail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainSuggestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::GetDomainSuggestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOperationDetail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::GetOperationDetail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ListOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ListTagsForDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::RegisterDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RenewDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::RenewDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResendContactReachabilityEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ResendContactReachabilityEmail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetrieveDomainAuthCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::RetrieveDomainAuthCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TransferDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::TransferDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::UpdateDomainContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainContactPrivacy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::UpdateDomainContactPrivacy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainNameservers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::UpdateDomainNameservers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTagsForDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::UpdateTagsForDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ViewBilling {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ViewBilling', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageMarker) {
        $next_result = $self->ListDomains(@_, Marker => $next_result->NextPageMarker);
        push @{ $result->Domains }, @{ $next_result->Domains };
      }
      return $result;
    } else {
      while ($result->NextPageMarker) {
        $callback->($_ => 'Domains') foreach (@{ $result->Domains });
        $result = $self->ListDomains(@_, Marker => $result->NextPageMarker);
      }
      $callback->($_ => 'Domains') foreach (@{ $result->Domains });
    }

    return undef
  }
  sub ListAllOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageMarker) {
        $next_result = $self->ListOperations(@_, Marker => $next_result->NextPageMarker);
        push @{ $result->Operations }, @{ $next_result->Operations };
      }
      return $result;
    } else {
      while ($result->NextPageMarker) {
        $callback->($_ => 'Operations') foreach (@{ $result->Operations });
        $result = $self->ListOperations(@_, Marker => $result->NextPageMarker);
      }
      $callback->($_ => 'Operations') foreach (@{ $result->Operations });
    }

    return undef
  }
  sub ViewAllBilling {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ViewBilling(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageMarker) {
        $next_result = $self->ViewBilling(@_, Marker => $next_result->NextPageMarker);
        push @{ $result->BillingRecords }, @{ $next_result->BillingRecords };
      }
      return $result;
    } else {
      while ($result->NextPageMarker) {
        $callback->($_ => 'BillingRecords') foreach (@{ $result->BillingRecords });
        $result = $self->ViewBilling(@_, Marker => $result->NextPageMarker);
      }
      $callback->($_ => 'BillingRecords') foreach (@{ $result->BillingRecords });
    }

    return undef
  }


  sub operations { qw/CheckDomainAvailability CheckDomainTransferability DeleteTagsForDomain DisableDomainAutoRenew DisableDomainTransferLock EnableDomainAutoRenew EnableDomainTransferLock GetContactReachabilityStatus GetDomainDetail GetDomainSuggestions GetOperationDetail ListDomains ListOperations ListTagsForDomain RegisterDomain RenewDomain ResendContactReachabilityEmail RetrieveDomainAuthCode TransferDomain UpdateDomainContact UpdateDomainContactPrivacy UpdateDomainNameservers UpdateTagsForDomain ViewBilling / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains - Perl Interface to AWS Amazon Route 53 Domains

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Route53Domains');
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

Amazon Route 53 API actions let you register domain names and perform
related operations.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15>


=head1 METHODS

=head2 CheckDomainAvailability

=over

=item DomainName => Str

=item [IdnLangCode => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::CheckDomainAvailability>

Returns: a L<Paws::Route53Domains::CheckDomainAvailabilityResponse> instance

This operation checks the availability of one domain name. Note that if
the availability status of a domain is pending, you must submit another
request to determine the availability of the domain name.


=head2 CheckDomainTransferability

=over

=item DomainName => Str

=item [AuthCode => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::CheckDomainTransferability>

Returns: a L<Paws::Route53Domains::CheckDomainTransferabilityResponse> instance

Checks whether a domain name can be transferred to Amazon Route 53.


=head2 DeleteTagsForDomain

=over

=item DomainName => Str

=item TagsToDelete => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Route53Domains::DeleteTagsForDomain>

Returns: a L<Paws::Route53Domains::DeleteTagsForDomainResponse> instance

This operation deletes the specified tags for a domain.

All tag operations are eventually consistent; subsequent operations
might not immediately represent all issued operations.


=head2 DisableDomainAutoRenew

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::DisableDomainAutoRenew>

Returns: a L<Paws::Route53Domains::DisableDomainAutoRenewResponse> instance

This operation disables automatic renewal of domain registration for
the specified domain.


=head2 DisableDomainTransferLock

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::DisableDomainTransferLock>

Returns: a L<Paws::Route53Domains::DisableDomainTransferLockResponse> instance

This operation removes the transfer lock on the domain (specifically
the C<clientTransferProhibited> status) to allow domain transfers. We
recommend you refrain from performing this action unless you intend to
transfer the domain to a different registrar. Successful submission
returns an operation ID that you can use to track the progress and
completion of the action. If the request is not completed successfully,
the domain registrant will be notified by email.


=head2 EnableDomainAutoRenew

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::EnableDomainAutoRenew>

Returns: a L<Paws::Route53Domains::EnableDomainAutoRenewResponse> instance

This operation configures Amazon Route 53 to automatically renew the
specified domain before the domain registration expires. The cost of
renewing your domain registration is billed to your AWS account.

The period during which you can renew a domain name varies by TLD. For
a list of TLDs and their renewal policies, see "Renewal, restoration,
and deletion times"
(http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times)
on the website for our registrar associate, Gandi. Amazon Route 53
requires that you renew before the end of the renewal period that is
listed on the Gandi website so we can complete processing before the
deadline.


=head2 EnableDomainTransferLock

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::EnableDomainTransferLock>

Returns: a L<Paws::Route53Domains::EnableDomainTransferLockResponse> instance

This operation sets the transfer lock on the domain (specifically the
C<clientTransferProhibited> status) to prevent domain transfers.
Successful submission returns an operation ID that you can use to track
the progress and completion of the action. If the request is not
completed successfully, the domain registrant will be notified by
email.


=head2 GetContactReachabilityStatus

=over

=item [DomainName => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::GetContactReachabilityStatus>

Returns: a L<Paws::Route53Domains::GetContactReachabilityStatusResponse> instance

For operations that require confirmation that the email address for the
registrant contact is valid, such as registering a new domain, this
operation returns information about whether the registrant contact has
responded.

If you want us to resend the email, use the
C<ResendContactReachabilityEmail> operation.


=head2 GetDomainDetail

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::GetDomainDetail>

Returns: a L<Paws::Route53Domains::GetDomainDetailResponse> instance

This operation returns detailed information about a specified domain
that is associated with the current AWS account. Contact information
for the domain is also returned as part of the output.


=head2 GetDomainSuggestions

=over

=item DomainName => Str

=item OnlyAvailable => Bool

=item SuggestionCount => Int


=back

Each argument is described in detail in: L<Paws::Route53Domains::GetDomainSuggestions>

Returns: a L<Paws::Route53Domains::GetDomainSuggestionsResponse> instance

The GetDomainSuggestions operation returns a list of suggested domain
names given a string, which can either be a domain name or simply a
word or phrase (without spaces).


=head2 GetOperationDetail

=over

=item OperationId => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::GetOperationDetail>

Returns: a L<Paws::Route53Domains::GetOperationDetailResponse> instance

This operation returns the current status of an operation that is not
completed.


=head2 ListDomains

=over

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Route53Domains::ListDomains>

Returns: a L<Paws::Route53Domains::ListDomainsResponse> instance

This operation returns all the domain names registered with Amazon
Route 53 for the current AWS account.


=head2 ListOperations

=over

=item [Marker => Str]

=item [MaxItems => Int]

=item [SubmittedSince => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::ListOperations>

Returns: a L<Paws::Route53Domains::ListOperationsResponse> instance

This operation returns the operation IDs of operations that are not yet
complete.


=head2 ListTagsForDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::ListTagsForDomain>

Returns: a L<Paws::Route53Domains::ListTagsForDomainResponse> instance

This operation returns all of the tags that are associated with the
specified domain.

All tag operations are eventually consistent; subsequent operations
might not immediately represent all issued operations.


=head2 RegisterDomain

=over

=item AdminContact => L<Paws::Route53Domains::ContactDetail>

=item DomainName => Str

=item DurationInYears => Int

=item RegistrantContact => L<Paws::Route53Domains::ContactDetail>

=item TechContact => L<Paws::Route53Domains::ContactDetail>

=item [AutoRenew => Bool]

=item [IdnLangCode => Str]

=item [PrivacyProtectAdminContact => Bool]

=item [PrivacyProtectRegistrantContact => Bool]

=item [PrivacyProtectTechContact => Bool]


=back

Each argument is described in detail in: L<Paws::Route53Domains::RegisterDomain>

Returns: a L<Paws::Route53Domains::RegisterDomainResponse> instance

This operation registers a domain. Domains are registered either by
Amazon Registrar (for .com, .net, and .org domains) or by our registrar
associate, Gandi (for all other domains). For some top-level domains
(TLDs), this operation requires extra parameters.

When you register a domain, Amazon Route 53 does the following:

=over

=item *

Creates a Amazon Route 53 hosted zone that has the same name as the
domain. Amazon Route 53 assigns four name servers to your hosted zone
and automatically updates your domain registration with the names of
these name servers.

=item *

Enables autorenew, so your domain registration will renew automatically
each year. We'll notify you in advance of the renewal date so you can
choose whether to renew the registration.

=item *

Optionally enables privacy protection, so WHOIS queries return contact
information either for Amazon Registrar (for .com, .net, and .org
domains) or for our registrar associate, Gandi (for all other TLDs). If
you don't enable privacy protection, WHOIS queries return the
information that you entered for the registrant, admin, and tech
contacts.

=item *

If registration is successful, returns an operation ID that you can use
to track the progress and completion of the action. If the request is
not completed successfully, the domain registrant is notified by email.

=item *

Charges your AWS account an amount based on the top-level domain. For
more information, see Amazon Route 53 Pricing
(http://aws.amazon.com/route53/pricing/).

=back



=head2 RenewDomain

=over

=item CurrentExpiryYear => Int

=item DomainName => Str

=item [DurationInYears => Int]


=back

Each argument is described in detail in: L<Paws::Route53Domains::RenewDomain>

Returns: a L<Paws::Route53Domains::RenewDomainResponse> instance

This operation renews a domain for the specified number of years. The
cost of renewing your domain is billed to your AWS account.

We recommend that you renew your domain several weeks before the
expiration date. Some TLD registries delete domains before the
expiration date if you haven't renewed far enough in advance. For more
information about renewing domain registration, see Renewing
Registration for a Domain
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html)
in the Amazon Route 53 Developer Guide.


=head2 ResendContactReachabilityEmail

=over

=item [DomainName => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::ResendContactReachabilityEmail>

Returns: a L<Paws::Route53Domains::ResendContactReachabilityEmailResponse> instance

For operations that require confirmation that the email address for the
registrant contact is valid, such as registering a new domain, this
operation resends the confirmation email to the current email address
for the registrant contact.


=head2 RetrieveDomainAuthCode

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::RetrieveDomainAuthCode>

Returns: a L<Paws::Route53Domains::RetrieveDomainAuthCodeResponse> instance

This operation returns the AuthCode for the domain. To transfer a
domain to another registrar, you provide this value to the new
registrar.


=head2 TransferDomain

=over

=item AdminContact => L<Paws::Route53Domains::ContactDetail>

=item DomainName => Str

=item DurationInYears => Int

=item RegistrantContact => L<Paws::Route53Domains::ContactDetail>

=item TechContact => L<Paws::Route53Domains::ContactDetail>

=item [AuthCode => Str]

=item [AutoRenew => Bool]

=item [IdnLangCode => Str]

=item [Nameservers => ArrayRef[L<Paws::Route53Domains::Nameserver>]]

=item [PrivacyProtectAdminContact => Bool]

=item [PrivacyProtectRegistrantContact => Bool]

=item [PrivacyProtectTechContact => Bool]


=back

Each argument is described in detail in: L<Paws::Route53Domains::TransferDomain>

Returns: a L<Paws::Route53Domains::TransferDomainResponse> instance

This operation transfers a domain from another registrar to Amazon
Route 53. When the transfer is complete, the domain is registered
either with Amazon Registrar (for .com, .net, and .org domains) or with
our registrar associate, Gandi (for all other TLDs).

For transfer requirements, a detailed procedure, and information about
viewing the status of a domain transfer, see Transferring Registration
for a Domain to Amazon Route 53
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html)
in the I<Amazon Route 53 Developer Guide>.

If the registrar for your domain is also the DNS service provider for
the domain, we highly recommend that you consider transferring your DNS
service to Amazon Route 53 or to another DNS service provider before
you transfer your registration. Some registrars provide free DNS
service when you purchase a domain registration. When you transfer the
registration, the previous registrar will not renew your domain
registration and could end your DNS service at any time.

If the registrar for your domain is also the DNS service provider for
the domain and you don't transfer DNS service to another provider, your
website, email, and the web applications associated with the domain
might become unavailable.

If the transfer is successful, this method returns an operation ID that
you can use to track the progress and completion of the action. If the
transfer doesn't complete successfully, the domain registrant will be
notified by email.


=head2 UpdateDomainContact

=over

=item DomainName => Str

=item [AdminContact => L<Paws::Route53Domains::ContactDetail>]

=item [RegistrantContact => L<Paws::Route53Domains::ContactDetail>]

=item [TechContact => L<Paws::Route53Domains::ContactDetail>]


=back

Each argument is described in detail in: L<Paws::Route53Domains::UpdateDomainContact>

Returns: a L<Paws::Route53Domains::UpdateDomainContactResponse> instance

This operation updates the contact information for a particular domain.
You must specify information for at least one contact: registrant,
administrator, or technical.

If the update is successful, this method returns an operation ID that
you can use to track the progress and completion of the action. If the
request is not completed successfully, the domain registrant will be
notified by email.


=head2 UpdateDomainContactPrivacy

=over

=item DomainName => Str

=item [AdminPrivacy => Bool]

=item [RegistrantPrivacy => Bool]

=item [TechPrivacy => Bool]


=back

Each argument is described in detail in: L<Paws::Route53Domains::UpdateDomainContactPrivacy>

Returns: a L<Paws::Route53Domains::UpdateDomainContactPrivacyResponse> instance

This operation updates the specified domain contact's privacy setting.
When privacy protection is enabled, contact information such as email
address is replaced either with contact information for Amazon
Registrar (for .com, .net, and .org domains) or with contact
information for our registrar associate, Gandi.

This operation affects only the contact information for the specified
contact type (registrant, administrator, or tech). If the request
succeeds, Amazon Route 53 returns an operation ID that you can use with
GetOperationDetail to track the progress and completion of the action.
If the request doesn't complete successfully, the domain registrant
will be notified by email.


=head2 UpdateDomainNameservers

=over

=item DomainName => Str

=item Nameservers => ArrayRef[L<Paws::Route53Domains::Nameserver>]

=item [FIAuthKey => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::UpdateDomainNameservers>

Returns: a L<Paws::Route53Domains::UpdateDomainNameserversResponse> instance

This operation replaces the current set of name servers for the domain
with the specified set of name servers. If you use Amazon Route 53 as
your DNS service, specify the four name servers in the delegation set
for the hosted zone for the domain.

If successful, this operation returns an operation ID that you can use
to track the progress and completion of the action. If the request is
not completed successfully, the domain registrant will be notified by
email.


=head2 UpdateTagsForDomain

=over

=item DomainName => Str

=item [TagsToUpdate => ArrayRef[L<Paws::Route53Domains::Tag>]]


=back

Each argument is described in detail in: L<Paws::Route53Domains::UpdateTagsForDomain>

Returns: a L<Paws::Route53Domains::UpdateTagsForDomainResponse> instance

This operation adds or updates tags for a specified domain.

All tag operations are eventually consistent; subsequent operations
might not immediately represent all issued operations.


=head2 ViewBilling

=over

=item [End => Str]

=item [Marker => Str]

=item [MaxItems => Int]

=item [Start => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::ViewBilling>

Returns: a L<Paws::Route53Domains::ViewBillingResponse> instance

Returns all the domain-related billing records for the current AWS
account for a specified period




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDomains(sub { },[Marker => Str, MaxItems => Int])

=head2 ListAllDomains([Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Domains, passing the object as the first parameter, and the string 'Domains' as the second parameter 

If not, it will return a a L<Paws::Route53Domains::ListDomainsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOperations(sub { },[Marker => Str, MaxItems => Int, SubmittedSince => Str])

=head2 ListAllOperations([Marker => Str, MaxItems => Int, SubmittedSince => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Operations, passing the object as the first parameter, and the string 'Operations' as the second parameter 

If not, it will return a a L<Paws::Route53Domains::ListOperationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ViewAllBilling(sub { },[End => Str, Marker => Str, MaxItems => Int, Start => Str])

=head2 ViewAllBilling([End => Str, Marker => Str, MaxItems => Int, Start => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BillingRecords, passing the object as the first parameter, and the string 'BillingRecords' as the second parameter 

If not, it will return a a L<Paws::Route53Domains::ViewBillingResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

