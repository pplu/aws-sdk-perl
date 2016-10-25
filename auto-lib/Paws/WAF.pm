package Paws::WAF;
  use Moose;
  sub service { 'waf' }
  sub version { '2015-08-24' }
  sub target_prefix { 'AWSWAF_20150824' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'notStartsWith',
          'cn-'
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1'
        }
      },
      uri => 'https://waf.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub CreateByteMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateByteMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSizeConstraintSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateSizeConstraintSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSqlInjectionMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateSqlInjectionMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateXssMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::CreateXssMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteByteMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteByteMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSizeConstraintSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteSizeConstraintSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSqlInjectionMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteSqlInjectionMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteXssMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::DeleteXssMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetByteMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetByteMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChangeToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetChangeToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChangeTokenStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetChangeTokenStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSampledRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetSampledRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSizeConstraintSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetSizeConstraintSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSqlInjectionMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetSqlInjectionMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetXssMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::GetXssMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListByteMatchSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListByteMatchSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIPSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListIPSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSizeConstraintSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListSizeConstraintSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSqlInjectionMatchSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListSqlInjectionMatchSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWebACLs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListWebACLs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListXssMatchSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::ListXssMatchSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateByteMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateByteMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSizeConstraintSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateSizeConstraintSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSqlInjectionMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateSqlInjectionMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateXssMatchSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAF::UpdateXssMatchSet', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { qw/CreateByteMatchSet CreateIPSet CreateRule CreateSizeConstraintSet CreateSqlInjectionMatchSet CreateWebACL CreateXssMatchSet DeleteByteMatchSet DeleteIPSet DeleteRule DeleteSizeConstraintSet DeleteSqlInjectionMatchSet DeleteWebACL DeleteXssMatchSet GetByteMatchSet GetChangeToken GetChangeTokenStatus GetIPSet GetRule GetSampledRequests GetSizeConstraintSet GetSqlInjectionMatchSet GetWebACL GetXssMatchSet ListByteMatchSets ListIPSets ListRules ListSizeConstraintSets ListSqlInjectionMatchSets ListWebACLs ListXssMatchSets UpdateByteMatchSet UpdateIPSet UpdateRule UpdateSizeConstraintSet UpdateSqlInjectionMatchSet UpdateWebACL UpdateXssMatchSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF - Perl Interface to AWS AWS WAF

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WAF');
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

This is the I<AWS WAF API Reference>. This guide is for developers who
need detailed information about the AWS WAF API actions, data types,
and errors. For detailed information about AWS WAF features and an
overview of how to use the AWS WAF API, see the AWS WAF Developer
Guide.

=head1 METHODS

=head2 CreateByteMatchSet(ChangeToken => Str, Name => Str)

Each argument is described in detail in: L<Paws::WAF::CreateByteMatchSet>

Returns: a L<Paws::WAF::CreateByteMatchSetResponse> instance

  Creates a C<ByteMatchSet>. You then use UpdateByteMatchSet to identify
the part of a web request that you want AWS WAF to inspect, such as the
values of the C<User-Agent> header or the query string. For example,
you can create a C<ByteMatchSet> that matches any requests with
C<User-Agent> headers that contain the string C<BadBot>. You can then
configure AWS WAF to reject those requests.

To create and configure a C<ByteMatchSet>, perform the following steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateByteMatchSet> request.

=item 2.

Submit a C<CreateByteMatchSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateByteMatchSet> request.

=item 4.

Submit an UpdateByteMatchSet request to specify the part of the request
that you want AWS WAF to inspect (for example, the header or the URI)
and the value that you want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 CreateIPSet(ChangeToken => Str, Name => Str)

Each argument is described in detail in: L<Paws::WAF::CreateIPSet>

Returns: a L<Paws::WAF::CreateIPSetResponse> instance

  Creates an IPSet, which you use to specify which web requests you want
to allow or block based on the IP addresses that the requests originate
from. For example, if you're receiving a lot of requests from one or
more individual IP addresses or one or more ranges of IP addresses and
you want to block the requests, you can create an C<IPSet> that
contains those IP addresses and then configure AWS WAF to block the
requests.

To create and configure an C<IPSet>, perform the following steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateIPSet> request.

=item 2.

Submit a C<CreateIPSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateIPSet request.

=item 4.

Submit an C<UpdateIPSet> request to specify the IP addresses that you
want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 CreateRule(ChangeToken => Str, MetricName => Str, Name => Str)

Each argument is described in detail in: L<Paws::WAF::CreateRule>

Returns: a L<Paws::WAF::CreateRuleResponse> instance

  Creates a C<Rule>, which contains the C<IPSet> objects, C<ByteMatchSet>
objects, and other predicates that identify the requests that you want
to block. If you add more than one predicate to a C<Rule>, a request
must match all of the specifications to be allowed or blocked. For
example, suppose you add the following to a C<Rule>:

=over

=item *

An C<IPSet> that matches the IP address C<192.0.2.44/32>

=item *

A C<ByteMatchSet> that matches C<BadBot> in the C<User-Agent> header

=back

You then add the C<Rule> to a C<WebACL> and specify that you want to
blocks requests that satisfy the C<Rule>. For a request to be blocked,
it must come from the IP address 192.0.2.44 I<and> the C<User-Agent>
header in the request must contain the value C<BadBot>.

To create and configure a C<Rule>, perform the following steps:

=over

=item 1.

Create and update the predicates that you want to include in the
C<Rule>. For more information, see CreateByteMatchSet, CreateIPSet, and
CreateSqlInjectionMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateRule> request.

=item 3.

Submit a C<CreateRule> request.

=item 4.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateRule request.

=item 5.

Submit an C<UpdateRule> request to specify the predicates that you want
to include in the C<Rule>.

=item 6.

Create and update a C<WebACL> that contains the C<Rule>. For more
information, see CreateWebACL.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 CreateSizeConstraintSet(ChangeToken => Str, Name => Str)

Each argument is described in detail in: L<Paws::WAF::CreateSizeConstraintSet>

Returns: a L<Paws::WAF::CreateSizeConstraintSetResponse> instance

  Creates a C<SizeConstraintSet>. You then use UpdateSizeConstraintSet to
identify the part of a web request that you want AWS WAF to check for
length, such as the length of the C<User-Agent> header or the length of
the query string. For example, you can create a C<SizeConstraintSet>
that matches any requests that have a query string that is longer than
100 bytes. You can then configure AWS WAF to reject those requests.

To create and configure a C<SizeConstraintSet>, perform the following
steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateSizeConstraintSet> request.

=item 2.

Submit a C<CreateSizeConstraintSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateSizeConstraintSet> request.

=item 4.

Submit an UpdateSizeConstraintSet request to specify the part of the
request that you want AWS WAF to inspect (for example, the header or
the URI) and the value that you want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 CreateSqlInjectionMatchSet(ChangeToken => Str, Name => Str)

Each argument is described in detail in: L<Paws::WAF::CreateSqlInjectionMatchSet>

Returns: a L<Paws::WAF::CreateSqlInjectionMatchSetResponse> instance

  Creates a SqlInjectionMatchSet, which you use to allow, block, or count
requests that contain snippets of SQL code in a specified part of web
requests. AWS WAF searches for character sequences that are likely to
be malicious strings.

To create and configure a C<SqlInjectionMatchSet>, perform the
following steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateSqlInjectionMatchSet> request.

=item 2.

Submit a C<CreateSqlInjectionMatchSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateSqlInjectionMatchSet request.

=item 4.

Submit an UpdateSqlInjectionMatchSet request to specify the parts of
web requests in which you want to allow, block, or count malicious SQL
code.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 CreateWebACL(ChangeToken => Str, DefaultAction => L<Paws::WAF::WafAction>, MetricName => Str, Name => Str)

Each argument is described in detail in: L<Paws::WAF::CreateWebACL>

Returns: a L<Paws::WAF::CreateWebACLResponse> instance

  Creates a C<WebACL>, which contains the C<Rules> that identify the
CloudFront web requests that you want to allow, block, or count. AWS
WAF evaluates C<Rules> in order based on the value of C<Priority> for
each C<Rule>.

You also specify a default action, either C<ALLOW> or C<BLOCK>. If a
web request doesn't match any of the C<Rules> in a C<WebACL>, AWS WAF
responds to the request with the default action.

To create and configure a C<WebACL>, perform the following steps:

=over

=item 1.

Create and update the C<ByteMatchSet> objects and other predicates that
you want to include in C<Rules>. For more information, see
CreateByteMatchSet, UpdateByteMatchSet, CreateIPSet, UpdateIPSet,
CreateSqlInjectionMatchSet, and UpdateSqlInjectionMatchSet.

=item 2.

Create and update the C<Rules> that you want to include in the
C<WebACL>. For more information, see CreateRule and UpdateRule.

=item 3.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateWebACL> request.

=item 4.

Submit a C<CreateWebACL> request.

=item 5.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateWebACL request.

=item 6.

Submit an UpdateWebACL request to specify the C<Rules> that you want to
include in the C<WebACL>, to specify the default action, and to
associate the C<WebACL> with a CloudFront distribution.

=back

For more information about how to use the AWS WAF API, see the AWS WAF
Developer Guide.


=head2 CreateXssMatchSet(ChangeToken => Str, Name => Str)

Each argument is described in detail in: L<Paws::WAF::CreateXssMatchSet>

Returns: a L<Paws::WAF::CreateXssMatchSetResponse> instance

  Creates an XssMatchSet, which you use to allow, block, or count
requests that contain cross-site scripting attacks in the specified
part of web requests. AWS WAF searches for character sequences that are
likely to be malicious strings.

To create and configure an C<XssMatchSet>, perform the following steps:

=over

=item 1.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<CreateXssMatchSet> request.

=item 2.

Submit a C<CreateXssMatchSet> request.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateXssMatchSet request.

=item 4.

Submit an UpdateXssMatchSet request to specify the parts of web
requests in which you want to allow, block, or count cross-site
scripting attacks.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 DeleteByteMatchSet(ByteMatchSetId => Str, ChangeToken => Str)

Each argument is described in detail in: L<Paws::WAF::DeleteByteMatchSet>

Returns: a L<Paws::WAF::DeleteByteMatchSetResponse> instance

  Permanently deletes a ByteMatchSet. You can't delete a C<ByteMatchSet>
if it's still used in any C<Rules> or if it still includes any
ByteMatchTuple objects (any filters).

If you just want to remove a C<ByteMatchSet> from a C<Rule>, use
UpdateRule.

To permanently delete a C<ByteMatchSet>, perform the following steps:

=over

=item 1.

Update the C<ByteMatchSet> to remove filters, if any. For more
information, see UpdateByteMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteByteMatchSet> request.

=item 3.

Submit a C<DeleteByteMatchSet> request.

=back



=head2 DeleteIPSet(ChangeToken => Str, IPSetId => Str)

Each argument is described in detail in: L<Paws::WAF::DeleteIPSet>

Returns: a L<Paws::WAF::DeleteIPSetResponse> instance

  Permanently deletes an IPSet. You can't delete an C<IPSet> if it's
still used in any C<Rules> or if it still includes any IP addresses.

If you just want to remove an C<IPSet> from a C<Rule>, use UpdateRule.

To permanently delete an C<IPSet> from AWS WAF, perform the following
steps:

=over

=item 1.

Update the C<IPSet> to remove IP address ranges, if any. For more
information, see UpdateIPSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteIPSet> request.

=item 3.

Submit a C<DeleteIPSet> request.

=back



=head2 DeleteRule(ChangeToken => Str, RuleId => Str)

Each argument is described in detail in: L<Paws::WAF::DeleteRule>

Returns: a L<Paws::WAF::DeleteRuleResponse> instance

  Permanently deletes a Rule. You can't delete a C<Rule> if it's still
used in any C<WebACL> objects or if it still includes any predicates,
such as C<ByteMatchSet> objects.

If you just want to remove a C<Rule> from a C<WebACL>, use
UpdateWebACL.

To permanently delete a C<Rule> from AWS WAF, perform the following
steps:

=over

=item 1.

Update the C<Rule> to remove predicates, if any. For more information,
see UpdateRule.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteRule> request.

=item 3.

Submit a C<DeleteRule> request.

=back



=head2 DeleteSizeConstraintSet(ChangeToken => Str, SizeConstraintSetId => Str)

Each argument is described in detail in: L<Paws::WAF::DeleteSizeConstraintSet>

Returns: a L<Paws::WAF::DeleteSizeConstraintSetResponse> instance

  Permanently deletes a SizeConstraintSet. You can't delete a
C<SizeConstraintSet> if it's still used in any C<Rules> or if it still
includes any SizeConstraint objects (any filters).

If you just want to remove a C<SizeConstraintSet> from a C<Rule>, use
UpdateRule.

To permanently delete a C<SizeConstraintSet>, perform the following
steps:

=over

=item 1.

Update the C<SizeConstraintSet> to remove filters, if any. For more
information, see UpdateSizeConstraintSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteSizeConstraintSet> request.

=item 3.

Submit a C<DeleteSizeConstraintSet> request.

=back



=head2 DeleteSqlInjectionMatchSet(ChangeToken => Str, SqlInjectionMatchSetId => Str)

Each argument is described in detail in: L<Paws::WAF::DeleteSqlInjectionMatchSet>

Returns: a L<Paws::WAF::DeleteSqlInjectionMatchSetResponse> instance

  Permanently deletes a SqlInjectionMatchSet. You can't delete a
C<SqlInjectionMatchSet> if it's still used in any C<Rules> or if it
still contains any SqlInjectionMatchTuple objects.

If you just want to remove a C<SqlInjectionMatchSet> from a C<Rule>,
use UpdateRule.

To permanently delete a C<SqlInjectionMatchSet> from AWS WAF, perform
the following steps:

=over

=item 1.

Update the C<SqlInjectionMatchSet> to remove filters, if any. For more
information, see UpdateSqlInjectionMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteSqlInjectionMatchSet> request.

=item 3.

Submit a C<DeleteSqlInjectionMatchSet> request.

=back



=head2 DeleteWebACL(ChangeToken => Str, WebACLId => Str)

Each argument is described in detail in: L<Paws::WAF::DeleteWebACL>

Returns: a L<Paws::WAF::DeleteWebACLResponse> instance

  Permanently deletes a WebACL. You can't delete a C<WebACL> if it still
contains any C<Rules>.

To delete a C<WebACL>, perform the following steps:

=over

=item 1.

Update the C<WebACL> to remove C<Rules>, if any. For more information,
see UpdateWebACL.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteWebACL> request.

=item 3.

Submit a C<DeleteWebACL> request.

=back



=head2 DeleteXssMatchSet(ChangeToken => Str, XssMatchSetId => Str)

Each argument is described in detail in: L<Paws::WAF::DeleteXssMatchSet>

Returns: a L<Paws::WAF::DeleteXssMatchSetResponse> instance

  Permanently deletes an XssMatchSet. You can't delete an C<XssMatchSet>
if it's still used in any C<Rules> or if it still contains any
XssMatchTuple objects.

If you just want to remove an C<XssMatchSet> from a C<Rule>, use
UpdateRule.

To permanently delete an C<XssMatchSet> from AWS WAF, perform the
following steps:

=over

=item 1.

Update the C<XssMatchSet> to remove filters, if any. For more
information, see UpdateXssMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of a C<DeleteXssMatchSet> request.

=item 3.

Submit a C<DeleteXssMatchSet> request.

=back



=head2 GetByteMatchSet(ByteMatchSetId => Str)

Each argument is described in detail in: L<Paws::WAF::GetByteMatchSet>

Returns: a L<Paws::WAF::GetByteMatchSetResponse> instance

  Returns the ByteMatchSet specified by C<ByteMatchSetId>.


=head2 GetChangeToken()

Each argument is described in detail in: L<Paws::WAF::GetChangeToken>

Returns: a L<Paws::WAF::GetChangeTokenResponse> instance

  When you want to create, update, or delete AWS WAF objects, get a
change token and include the change token in the create, update, or
delete request. Change tokens ensure that your application doesn't
submit conflicting requests to AWS WAF.

Each create, update, or delete request must use a unique change token.
If your application submits a C<GetChangeToken> request and then
submits a second C<GetChangeToken> request before submitting a create,
update, or delete request, the second C<GetChangeToken> request returns
the same value as the first C<GetChangeToken> request.

When you use a change token in a create, update, or delete request, the
status of the change token changes to C<PENDING>, which indicates that
AWS WAF is propagating the change to all AWS WAF servers. Use
C<GetChangeTokenStatus> to determine the status of your change token.


=head2 GetChangeTokenStatus(ChangeToken => Str)

Each argument is described in detail in: L<Paws::WAF::GetChangeTokenStatus>

Returns: a L<Paws::WAF::GetChangeTokenStatusResponse> instance

  Returns the status of a C<ChangeToken> that you got by calling
GetChangeToken. C<ChangeTokenStatus> is one of the following values:

=over

=item *

C<PROVISIONED>: You requested the change token by calling
C<GetChangeToken>, but you haven't used it yet in a call to create,
update, or delete an AWS WAF object.

=item *

C<PENDING>: AWS WAF is propagating the create, update, or delete
request to all AWS WAF servers.

=item *

C<IN_SYNC>: Propagation is complete.

=back



=head2 GetIPSet(IPSetId => Str)

Each argument is described in detail in: L<Paws::WAF::GetIPSet>

Returns: a L<Paws::WAF::GetIPSetResponse> instance

  Returns the IPSet that is specified by C<IPSetId>.


=head2 GetRule(RuleId => Str)

Each argument is described in detail in: L<Paws::WAF::GetRule>

Returns: a L<Paws::WAF::GetRuleResponse> instance

  Returns the Rule that is specified by the C<RuleId> that you included
in the C<GetRule> request.


=head2 GetSampledRequests(MaxItems => Int, RuleId => Str, TimeWindow => L<Paws::WAF::TimeWindow>, WebAclId => Str)

Each argument is described in detail in: L<Paws::WAF::GetSampledRequests>

Returns: a L<Paws::WAF::GetSampledRequestsResponse> instance

  Gets detailed information about a specified number of requests--a
sample--that AWS WAF randomly selects from among the first 5,000
requests that your AWS resource received during a time range that you
choose. You can specify a sample size of up to 100 requests, and you
can specify any time range in the previous three hours.

C<GetSampledRequests> returns a time range, which is usually the time
range that you specified. However, if your resource (such as a
CloudFront distribution) received 5,000 requests before the specified
time range elapsed, C<GetSampledRequests> returns an updated time
range. This new time range indicates the actual period during which AWS
WAF selected the requests in the sample.


=head2 GetSizeConstraintSet(SizeConstraintSetId => Str)

Each argument is described in detail in: L<Paws::WAF::GetSizeConstraintSet>

Returns: a L<Paws::WAF::GetSizeConstraintSetResponse> instance

  Returns the SizeConstraintSet specified by C<SizeConstraintSetId>.


=head2 GetSqlInjectionMatchSet(SqlInjectionMatchSetId => Str)

Each argument is described in detail in: L<Paws::WAF::GetSqlInjectionMatchSet>

Returns: a L<Paws::WAF::GetSqlInjectionMatchSetResponse> instance

  Returns the SqlInjectionMatchSet that is specified by
C<SqlInjectionMatchSetId>.


=head2 GetWebACL(WebACLId => Str)

Each argument is described in detail in: L<Paws::WAF::GetWebACL>

Returns: a L<Paws::WAF::GetWebACLResponse> instance

  Returns the WebACL that is specified by C<WebACLId>.


=head2 GetXssMatchSet(XssMatchSetId => Str)

Each argument is described in detail in: L<Paws::WAF::GetXssMatchSet>

Returns: a L<Paws::WAF::GetXssMatchSetResponse> instance

  Returns the XssMatchSet that is specified by C<XssMatchSetId>.


=head2 ListByteMatchSets([Limit => Int, NextMarker => Str])

Each argument is described in detail in: L<Paws::WAF::ListByteMatchSets>

Returns: a L<Paws::WAF::ListByteMatchSetsResponse> instance

  Returns an array of ByteMatchSetSummary objects.


=head2 ListIPSets([Limit => Int, NextMarker => Str])

Each argument is described in detail in: L<Paws::WAF::ListIPSets>

Returns: a L<Paws::WAF::ListIPSetsResponse> instance

  Returns an array of IPSetSummary objects in the response.


=head2 ListRules([Limit => Int, NextMarker => Str])

Each argument is described in detail in: L<Paws::WAF::ListRules>

Returns: a L<Paws::WAF::ListRulesResponse> instance

  Returns an array of RuleSummary objects.


=head2 ListSizeConstraintSets([Limit => Int, NextMarker => Str])

Each argument is described in detail in: L<Paws::WAF::ListSizeConstraintSets>

Returns: a L<Paws::WAF::ListSizeConstraintSetsResponse> instance

  Returns an array of SizeConstraintSetSummary objects.


=head2 ListSqlInjectionMatchSets([Limit => Int, NextMarker => Str])

Each argument is described in detail in: L<Paws::WAF::ListSqlInjectionMatchSets>

Returns: a L<Paws::WAF::ListSqlInjectionMatchSetsResponse> instance

  Returns an array of SqlInjectionMatchSet objects.


=head2 ListWebACLs([Limit => Int, NextMarker => Str])

Each argument is described in detail in: L<Paws::WAF::ListWebACLs>

Returns: a L<Paws::WAF::ListWebACLsResponse> instance

  Returns an array of WebACLSummary objects in the response.


=head2 ListXssMatchSets([Limit => Int, NextMarker => Str])

Each argument is described in detail in: L<Paws::WAF::ListXssMatchSets>

Returns: a L<Paws::WAF::ListXssMatchSetsResponse> instance

  Returns an array of XssMatchSet objects.


=head2 UpdateByteMatchSet(ByteMatchSetId => Str, ChangeToken => Str, Updates => ArrayRef[L<Paws::WAF::ByteMatchSetUpdate>])

Each argument is described in detail in: L<Paws::WAF::UpdateByteMatchSet>

Returns: a L<Paws::WAF::UpdateByteMatchSetResponse> instance

  Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet.
For each C<ByteMatchTuple> object, you specify the following values:

=over

=item *

Whether to insert or delete the object from the array. If you want to
change a C<ByteMatchSetUpdate> object, you delete the existing object
and add a new one.

=item *

The part of a web request that you want AWS WAF to inspect, such as a
query string or the value of the C<User-Agent> header.

=item *

The bytes (typically a string that corresponds with ASCII characters)
that you want AWS WAF to look for. For more information, including how
you specify the values for the AWS WAF API and the AWS CLI or SDKs, see
C<TargetString> in the ByteMatchTuple data type.

=item *

Where to look, such as at the beginning or the end of a query string.

=item *

Whether to perform any conversions on the request, such as converting
it to lowercase, before inspecting it for the specified string.

=back

For example, you can add a C<ByteMatchSetUpdate> object that matches
web requests in which C<User-Agent> headers contain the string
C<BadBot>. You can then configure AWS WAF to block those requests.

To create and configure a C<ByteMatchSet>, perform the following steps:

=over

=item 1.

Create a C<ByteMatchSet.> For more information, see CreateByteMatchSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateByteMatchSet> request.

=item 3.

Submit an C<UpdateByteMatchSet> request to specify the part of the
request that you want AWS WAF to inspect (for example, the header or
the URI) and the value that you want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 UpdateIPSet(ChangeToken => Str, IPSetId => Str, Updates => ArrayRef[L<Paws::WAF::IPSetUpdate>])

Each argument is described in detail in: L<Paws::WAF::UpdateIPSet>

Returns: a L<Paws::WAF::UpdateIPSetResponse> instance

  Inserts or deletes IPSetDescriptor objects in an C<IPSet>. For each
C<IPSetDescriptor> object, you specify the following values:

=over

=item *

Whether to insert or delete the object from the array. If you want to
change an C<IPSetDescriptor> object, you delete the existing object and
add a new one.

=item *

The IP address version, C<IPv4>.

=item *

The IP address in CIDR notation, for example, C<192.0.2.0/24> (for the
range of IP addresses from C<192.0.2.0> to C<192.0.2.255>) or
C<192.0.2.44/32> (for the individual IP address C<192.0.2.44>).

=back

AWS WAF supports /8, /16, /24, and /32 IP address ranges. For more
information about CIDR notation, see the Wikipedia entry Classless
Inter-Domain Routing.

You use an C<IPSet> to specify which web requests you want to allow or
block based on the IP addresses that the requests originated from. For
example, if you're receiving a lot of requests from one or a small
number of IP addresses and you want to block the requests, you can
create an C<IPSet> that specifies those IP addresses, and then
configure AWS WAF to block the requests.

To create and configure an C<IPSet>, perform the following steps:

=over

=item 1.

Submit a CreateIPSet request.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateIPSet request.

=item 3.

Submit an C<UpdateIPSet> request to specify the IP addresses that you
want AWS WAF to watch for.

=back

When you update an C<IPSet>, you specify the IP addresses that you want
to add and/or the IP addresses that you want to delete. If you want to
change an IP address, you delete the existing IP address and add the
new one.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 UpdateRule(ChangeToken => Str, RuleId => Str, Updates => ArrayRef[L<Paws::WAF::RuleUpdate>])

Each argument is described in detail in: L<Paws::WAF::UpdateRule>

Returns: a L<Paws::WAF::UpdateRuleResponse> instance

  Inserts or deletes Predicate objects in a C<Rule>. Each C<Predicate>
object identifies a predicate, such as a ByteMatchSet or an IPSet, that
specifies the web requests that you want to allow, block, or count. If
you add more than one predicate to a C<Rule>, a request must match all
of the specifications to be allowed, blocked, or counted. For example,
suppose you add the following to a C<Rule>:

=over

=item *

A C<ByteMatchSet> that matches the value C<BadBot> in the C<User-Agent>
header

=item *

An C<IPSet> that matches the IP address C<192.0.2.44>

=back

You then add the C<Rule> to a C<WebACL> and specify that you want to
block requests that satisfy the C<Rule>. For a request to be blocked,
the C<User-Agent> header in the request must contain the value
C<BadBot> I<and> the request must originate from the IP address
192.0.2.44.

To create and configure a C<Rule>, perform the following steps:

=over

=item 1.

Create and update the predicates that you want to include in the
C<Rule>.

=item 2.

Create the C<Rule>. See CreateRule.

=item 3.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateRule request.

=item 4.

Submit an C<UpdateRule> request to add predicates to the C<Rule>.

=item 5.

Create and update a C<WebACL> that contains the C<Rule>. See
CreateWebACL.

=back

If you want to replace one C<ByteMatchSet> or C<IPSet> with another,
you delete the existing one and add the new one.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 UpdateSizeConstraintSet(ChangeToken => Str, SizeConstraintSetId => Str, Updates => ArrayRef[L<Paws::WAF::SizeConstraintSetUpdate>])

Each argument is described in detail in: L<Paws::WAF::UpdateSizeConstraintSet>

Returns: a L<Paws::WAF::UpdateSizeConstraintSetResponse> instance

  Inserts or deletes SizeConstraint objects (filters) in a
SizeConstraintSet. For each C<SizeConstraint> object, you specify the
following values:

=over

=item *

Whether to insert or delete the object from the array. If you want to
change a C<SizeConstraintSetUpdate> object, you delete the existing
object and add a new one.

=item *

The part of a web request that you want AWS WAF to evaluate, such as
the length of a query string or the length of the C<User-Agent> header.

=item *

Whether to perform any transformations on the request, such as
converting it to lowercase, before checking its length. Note that
transformations of the request body are not supported because the AWS
resource forwards only the first C<8192> bytes of your request to AWS
WAF.

=item *

A C<ComparisonOperator> used for evaluating the selected part of the
request against the specified C<Size>, such as equals, greater than,
less than, and so on.

=item *

The length, in bytes, that you want AWS WAF to watch for in selected
part of the request. The length is computed after applying the
transformation.

=back

For example, you can add a C<SizeConstraintSetUpdate> object that
matches web requests in which the length of the C<User-Agent> header is
greater than 100 bytes. You can then configure AWS WAF to block those
requests.

To create and configure a C<SizeConstraintSet>, perform the following
steps:

=over

=item 1.

Create a C<SizeConstraintSet.> For more information, see
CreateSizeConstraintSet.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an C<UpdateSizeConstraintSet> request.

=item 3.

Submit an C<UpdateSizeConstraintSet> request to specify the part of the
request that you want AWS WAF to inspect (for example, the header or
the URI) and the value that you want AWS WAF to watch for.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 UpdateSqlInjectionMatchSet(ChangeToken => Str, SqlInjectionMatchSetId => Str, Updates => ArrayRef[L<Paws::WAF::SqlInjectionMatchSetUpdate>])

Each argument is described in detail in: L<Paws::WAF::UpdateSqlInjectionMatchSet>

Returns: a L<Paws::WAF::UpdateSqlInjectionMatchSetResponse> instance

  Inserts or deletes SqlInjectionMatchTuple objects (filters) in a
SqlInjectionMatchSet. For each C<SqlInjectionMatchTuple> object, you
specify the following values:

=over

=item *

C<Action>: Whether to insert the object into or delete the object from
the array. To change a C<SqlInjectionMatchTuple>, you delete the
existing object and add a new one.

=item *

C<FieldToMatch>: The part of web requests that you want AWS WAF to
inspect and, if you want AWS WAF to inspect a header, the name of the
header.

=item *

C<TextTransformation>: Which text transformation, if any, to perform on
the web request before inspecting the request for snippets of malicious
SQL code.

=back

You use C<SqlInjectionMatchSet> objects to specify which CloudFront
requests you want to allow, block, or count. For example, if you're
receiving requests that contain snippets of SQL code in the query
string and you want to block the requests, you can create a
C<SqlInjectionMatchSet> with the applicable settings, and then
configure AWS WAF to block the requests.

To create and configure a C<SqlInjectionMatchSet>, perform the
following steps:

=over

=item 1.

Submit a CreateSqlInjectionMatchSet request.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateIPSet request.

=item 3.

Submit an C<UpdateSqlInjectionMatchSet> request to specify the parts of
web requests that you want AWS WAF to inspect for snippets of SQL code.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 UpdateWebACL(ChangeToken => Str, WebACLId => Str, [DefaultAction => L<Paws::WAF::WafAction>, Updates => ArrayRef[L<Paws::WAF::WebACLUpdate>]])

Each argument is described in detail in: L<Paws::WAF::UpdateWebACL>

Returns: a L<Paws::WAF::UpdateWebACLResponse> instance

  Inserts or deletes ActivatedRule objects in a C<WebACL>. Each C<Rule>
identifies web requests that you want to allow, block, or count. When
you update a C<WebACL>, you specify the following values:

=over

=item *

A default action for the C<WebACL>, either C<ALLOW> or C<BLOCK>. AWS
WAF performs the default action if a request doesn't match the criteria
in any of the C<Rules> in a C<WebACL>.

=item *

The C<Rules> that you want to add and/or delete. If you want to replace
one C<Rule> with another, you delete the existing C<Rule> and add the
new one.

=item *

For each C<Rule>, whether you want AWS WAF to allow requests, block
requests, or count requests that match the conditions in the C<Rule>.

=item *

The order in which you want AWS WAF to evaluate the C<Rules> in a
C<WebACL>. If you add more than one C<Rule> to a C<WebACL>, AWS WAF
evaluates each request against the C<Rules> in order based on the value
of C<Priority>. (The C<Rule> that has the lowest value for C<Priority>
is evaluated first.) When a web request matches all of the predicates
(such as C<ByteMatchSets> and C<IPSets>) in a C<Rule>, AWS WAF
immediately takes the corresponding action, allow or block, and doesn't
evaluate the request against the remaining C<Rules> in the C<WebACL>,
if any.

=item *

The CloudFront distribution that you want to associate with the
C<WebACL>.

=back

To create and configure a C<WebACL>, perform the following steps:

=over

=item 1.

Create and update the predicates that you want to include in C<Rules>.
For more information, see CreateByteMatchSet, UpdateByteMatchSet,
CreateIPSet, UpdateIPSet, CreateSqlInjectionMatchSet, and
UpdateSqlInjectionMatchSet.

=item 2.

Create and update the C<Rules> that you want to include in the
C<WebACL>. For more information, see CreateRule and UpdateRule.

=item 3.

Create a C<WebACL>. See CreateWebACL.

=item 4.

Use C<GetChangeToken> to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateWebACL request.

=item 5.

Submit an C<UpdateWebACL> request to specify the C<Rules> that you want
to include in the C<WebACL>, to specify the default action, and to
associate the C<WebACL> with a CloudFront distribution.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head2 UpdateXssMatchSet(ChangeToken => Str, Updates => ArrayRef[L<Paws::WAF::XssMatchSetUpdate>], XssMatchSetId => Str)

Each argument is described in detail in: L<Paws::WAF::UpdateXssMatchSet>

Returns: a L<Paws::WAF::UpdateXssMatchSetResponse> instance

  Inserts or deletes XssMatchTuple objects (filters) in an XssMatchSet.
For each C<XssMatchTuple> object, you specify the following values:

=over

=item *

C<Action>: Whether to insert the object into or delete the object from
the array. To change a C<XssMatchTuple>, you delete the existing object
and add a new one.

=item *

C<FieldToMatch>: The part of web requests that you want AWS WAF to
inspect and, if you want AWS WAF to inspect a header, the name of the
header.

=item *

C<TextTransformation>: Which text transformation, if any, to perform on
the web request before inspecting the request for cross-site scripting
attacks.

=back

You use C<XssMatchSet> objects to specify which CloudFront requests you
want to allow, block, or count. For example, if you're receiving
requests that contain cross-site scripting attacks in the request body
and you want to block the requests, you can create an C<XssMatchSet>
with the applicable settings, and then configure AWS WAF to block the
requests.

To create and configure an C<XssMatchSet>, perform the following steps:

=over

=item 1.

Submit a CreateXssMatchSet request.

=item 2.

Use GetChangeToken to get the change token that you provide in the
C<ChangeToken> parameter of an UpdateIPSet request.

=item 3.

Submit an C<UpdateXssMatchSet> request to specify the parts of web
requests that you want AWS WAF to inspect for cross-site scripting
attacks.

=back

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the AWS WAF Developer Guide.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

