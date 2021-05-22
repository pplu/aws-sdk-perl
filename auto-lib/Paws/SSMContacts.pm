package Paws::SSMContacts;
  use Moose;
  sub service { 'ssm-contacts' }
  sub signing_name { 'ssm-contacts' }
  sub version { '2021-05-03' }
  sub target_prefix { 'SSMContacts' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptPage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::AcceptPage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ActivateContactChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::ActivateContactChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::CreateContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContactChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::CreateContactChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeactivateContactChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::DeactivateContactChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::DeleteContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContactChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::DeleteContactChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEngagement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::DescribeEngagement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::DescribePage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::GetContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContactChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::GetContactChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContactPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::GetContactPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContactChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::ListContactChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::ListContacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEngagements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::ListEngagements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPageReceipts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::ListPageReceipts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPagesByContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::ListPagesByContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPagesByEngagement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::ListPagesByEngagement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutContactPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::PutContactPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendActivationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::SendActivationCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartEngagement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::StartEngagement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopEngagement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::StopEngagement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::UpdateContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMContacts::UpdateContactChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllContactChannels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContactChannels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContactChannels(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContactChannels }, @{ $next_result->ContactChannels };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContactChannels') foreach (@{ $result->ContactChannels });
        $result = $self->ListContactChannels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContactChannels') foreach (@{ $result->ContactChannels });
    }

    return undef
  }
  sub ListAllContacts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContacts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContacts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Contacts }, @{ $next_result->Contacts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Contacts') foreach (@{ $result->Contacts });
        $result = $self->ListContacts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Contacts') foreach (@{ $result->Contacts });
    }

    return undef
  }
  sub ListAllEngagements {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEngagements(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEngagements(@_, NextToken => $next_result->NextToken);
        push @{ $result->Engagements }, @{ $next_result->Engagements };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Engagements') foreach (@{ $result->Engagements });
        $result = $self->ListEngagements(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Engagements') foreach (@{ $result->Engagements });
    }

    return undef
  }
  sub ListAllPageReceipts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPageReceipts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPageReceipts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Receipts }, @{ $next_result->Receipts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Receipts') foreach (@{ $result->Receipts });
        $result = $self->ListPageReceipts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Receipts') foreach (@{ $result->Receipts });
    }

    return undef
  }
  sub ListAllPagesByContact {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPagesByContact(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPagesByContact(@_, NextToken => $next_result->NextToken);
        push @{ $result->Pages }, @{ $next_result->Pages };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Pages') foreach (@{ $result->Pages });
        $result = $self->ListPagesByContact(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Pages') foreach (@{ $result->Pages });
    }

    return undef
  }
  sub ListAllPagesByEngagement {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPagesByEngagement(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPagesByEngagement(@_, NextToken => $next_result->NextToken);
        push @{ $result->Pages }, @{ $next_result->Pages };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Pages') foreach (@{ $result->Pages });
        $result = $self->ListPagesByEngagement(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Pages') foreach (@{ $result->Pages });
    }

    return undef
  }


  sub operations { qw/AcceptPage ActivateContactChannel CreateContact CreateContactChannel DeactivateContactChannel DeleteContact DeleteContactChannel DescribeEngagement DescribePage GetContact GetContactChannel GetContactPolicy ListContactChannels ListContacts ListEngagements ListPageReceipts ListPagesByContact ListPagesByEngagement ListTagsForResource PutContactPolicy SendActivationCode StartEngagement StopEngagement TagResource UntagResource UpdateContact UpdateContactChannel / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts - Perl Interface to AWS AWS Systems Manager Incident Manager Contacts

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSMContacts');
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



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts-2021-05-03>


=head1 METHODS

=head2 AcceptPage

=over

=item AcceptCode => Str

=item AcceptType => Str

=item PageId => Str

=item [ContactChannelId => Str]

=item [Note => Str]


=back

Each argument is described in detail in: L<Paws::SSMContacts::AcceptPage>

Returns: a L<Paws::SSMContacts::AcceptPageResult> instance

Used to acknowledge an engagement to a contact channel during an
incident.


=head2 ActivateContactChannel

=over

=item ActivationCode => Str

=item ContactChannelId => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::ActivateContactChannel>

Returns: a L<Paws::SSMContacts::ActivateContactChannelResult> instance

Activates a contact's contact channel. Incident Manager can't engage a
contact until the contact channel has been activated.


=head2 CreateContact

=over

=item Alias => Str

=item Plan => L<Paws::SSMContacts::Plan>

=item Type => Str

=item [DisplayName => Str]

=item [IdempotencyToken => Str]

=item [Tags => ArrayRef[L<Paws::SSMContacts::Tag>]]


=back

Each argument is described in detail in: L<Paws::SSMContacts::CreateContact>

Returns: a L<Paws::SSMContacts::CreateContactResult> instance

Contacts are either the contacts that Incident Manager engages during
an incident or the escalation plans that Incident Manager uses to
engage contacts in phases during an incident.


=head2 CreateContactChannel

=over

=item ContactId => Str

=item DeliveryAddress => L<Paws::SSMContacts::ContactChannelAddress>

=item Name => Str

=item Type => Str

=item [DeferActivation => Bool]

=item [IdempotencyToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMContacts::CreateContactChannel>

Returns: a L<Paws::SSMContacts::CreateContactChannelResult> instance

A contact channel is the method that Incident Manager uses to engage
your contact.


=head2 DeactivateContactChannel

=over

=item ContactChannelId => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::DeactivateContactChannel>

Returns: a L<Paws::SSMContacts::DeactivateContactChannelResult> instance

To no longer receive Incident Manager engagements to a contact channel,
you can deactivate the channel.


=head2 DeleteContact

=over

=item ContactId => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::DeleteContact>

Returns: a L<Paws::SSMContacts::DeleteContactResult> instance

To remove a contact from Incident Manager, you can delete the contact.
Deleting a contact removes them from all escalation plans and related
response plans. Deleting an escalation plan removes it from all related
response plans. You will have to recreate the contact and its contact
channels before you can use it again.


=head2 DeleteContactChannel

=over

=item ContactChannelId => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::DeleteContactChannel>

Returns: a L<Paws::SSMContacts::DeleteContactChannelResult> instance

To no longer receive engagements on a contact channel, you can delete
the channel from a contact. Deleting the contact channel removes it
from the contact's engagement plan. If you delete the only contact
channel for a contact, you won't be able to engage that contact during
an incident.


=head2 DescribeEngagement

=over

=item EngagementId => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::DescribeEngagement>

Returns: a L<Paws::SSMContacts::DescribeEngagementResult> instance

Incident Manager uses engagements to engage contacts and escalation
plans during an incident. Use this command to describe the engagement
that occurred during an incident.


=head2 DescribePage

=over

=item PageId => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::DescribePage>

Returns: a L<Paws::SSMContacts::DescribePageResult> instance

Lists details of the engagement to a contact channel.


=head2 GetContact

=over

=item ContactId => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::GetContact>

Returns: a L<Paws::SSMContacts::GetContactResult> instance

Retrieves information about the specified contact or escalation plan.


=head2 GetContactChannel

=over

=item ContactChannelId => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::GetContactChannel>

Returns: a L<Paws::SSMContacts::GetContactChannelResult> instance

List details about a specific contact channel.


=head2 GetContactPolicy

=over

=item ContactArn => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::GetContactPolicy>

Returns: a L<Paws::SSMContacts::GetContactPolicyResult> instance

Retrieves the resource policies attached to the specified contact or
escalation plan.


=head2 ListContactChannels

=over

=item ContactId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMContacts::ListContactChannels>

Returns: a L<Paws::SSMContacts::ListContactChannelsResult> instance

Lists all contact channels for the specified contact.


=head2 ListContacts

=over

=item [AliasPrefix => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::SSMContacts::ListContacts>

Returns: a L<Paws::SSMContacts::ListContactsResult> instance

Lists all contacts and escalation plans in Incident Manager.


=head2 ListEngagements

=over

=item [IncidentId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TimeRangeValue => L<Paws::SSMContacts::TimeRange>]


=back

Each argument is described in detail in: L<Paws::SSMContacts::ListEngagements>

Returns: a L<Paws::SSMContacts::ListEngagementsResult> instance

Lists all engagements that have happened in an incident.


=head2 ListPageReceipts

=over

=item PageId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMContacts::ListPageReceipts>

Returns: a L<Paws::SSMContacts::ListPageReceiptsResult> instance

Lists all of the engagements to contact channels that have been
acknowledged.


=head2 ListPagesByContact

=over

=item ContactId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMContacts::ListPagesByContact>

Returns: a L<Paws::SSMContacts::ListPagesByContactResult> instance

Lists the engagements to a contact's contact channels.


=head2 ListPagesByEngagement

=over

=item EngagementId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMContacts::ListPagesByEngagement>

Returns: a L<Paws::SSMContacts::ListPagesByEngagementResult> instance

Lists the engagements to contact channels that occurred by engaging a
contact.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::ListTagsForResource>

Returns: a L<Paws::SSMContacts::ListTagsForResourceResult> instance

Lists the tags of an escalation plan or contact.


=head2 PutContactPolicy

=over

=item ContactArn => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::PutContactPolicy>

Returns: a L<Paws::SSMContacts::PutContactPolicyResult> instance

Adds a resource to the specified contact or escalation plan.


=head2 SendActivationCode

=over

=item ContactChannelId => Str


=back

Each argument is described in detail in: L<Paws::SSMContacts::SendActivationCode>

Returns: a L<Paws::SSMContacts::SendActivationCodeResult> instance

Sends an activation code to a contact channel. The contact can use this
code to activate the contact channel in the console or with the
C<ActivateChannel> action. Incident Manager can't engage a contact
channel until it has been activated.


=head2 StartEngagement

=over

=item ContactId => Str

=item Content => Str

=item Sender => Str

=item Subject => Str

=item [IdempotencyToken => Str]

=item [IncidentId => Str]

=item [PublicContent => Str]

=item [PublicSubject => Str]


=back

Each argument is described in detail in: L<Paws::SSMContacts::StartEngagement>

Returns: a L<Paws::SSMContacts::StartEngagementResult> instance

Starts an engagement to a contact or escalation plan. The engagement
engages each contact specified in the incident.


=head2 StopEngagement

=over

=item EngagementId => Str

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::SSMContacts::StopEngagement>

Returns: a L<Paws::SSMContacts::StopEngagementResult> instance

Stops an engagement before it finishes the final stage of the
escalation plan or engagement plan. Further contacts aren't engaged.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::SSMContacts::Tag>]


=back

Each argument is described in detail in: L<Paws::SSMContacts::TagResource>

Returns: a L<Paws::SSMContacts::TagResourceResult> instance

Tags a contact or escalation plan. You can tag only contacts and
escalation plans in the first region of your replication set.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SSMContacts::UntagResource>

Returns: a L<Paws::SSMContacts::UntagResourceResult> instance

Removes tags from the specified resource.


=head2 UpdateContact

=over

=item ContactId => Str

=item [DisplayName => Str]

=item [Plan => L<Paws::SSMContacts::Plan>]


=back

Each argument is described in detail in: L<Paws::SSMContacts::UpdateContact>

Returns: a L<Paws::SSMContacts::UpdateContactResult> instance

Updates the contact or escalation plan specified.


=head2 UpdateContactChannel

=over

=item ContactChannelId => Str

=item [DeliveryAddress => L<Paws::SSMContacts::ContactChannelAddress>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::SSMContacts::UpdateContactChannel>

Returns: a L<Paws::SSMContacts::UpdateContactChannelResult> instance

Updates a contact's contact channel.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllContactChannels(sub { },ContactId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllContactChannels(ContactId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContactChannels, passing the object as the first parameter, and the string 'ContactChannels' as the second parameter 

If not, it will return a a L<Paws::SSMContacts::ListContactChannelsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContacts(sub { },[AliasPrefix => Str, MaxResults => Int, NextToken => Str, Type => Str])

=head2 ListAllContacts([AliasPrefix => Str, MaxResults => Int, NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Contacts, passing the object as the first parameter, and the string 'Contacts' as the second parameter 

If not, it will return a a L<Paws::SSMContacts::ListContactsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEngagements(sub { },[IncidentId => Str, MaxResults => Int, NextToken => Str, TimeRangeValue => L<Paws::SSMContacts::TimeRange>])

=head2 ListAllEngagements([IncidentId => Str, MaxResults => Int, NextToken => Str, TimeRangeValue => L<Paws::SSMContacts::TimeRange>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Engagements, passing the object as the first parameter, and the string 'Engagements' as the second parameter 

If not, it will return a a L<Paws::SSMContacts::ListEngagementsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPageReceipts(sub { },PageId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPageReceipts(PageId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Receipts, passing the object as the first parameter, and the string 'Receipts' as the second parameter 

If not, it will return a a L<Paws::SSMContacts::ListPageReceiptsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPagesByContact(sub { },ContactId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPagesByContact(ContactId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Pages, passing the object as the first parameter, and the string 'Pages' as the second parameter 

If not, it will return a a L<Paws::SSMContacts::ListPagesByContactResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPagesByEngagement(sub { },EngagementId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPagesByEngagement(EngagementId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Pages, passing the object as the first parameter, and the string 'Pages' as the second parameter 

If not, it will return a a L<Paws::SSMContacts::ListPagesByEngagementResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

