# Generated by default/object.tt
package Paws::CloudFront::CachePolicyQueryStringsConfig;
  use Moose;
  has QueryStringBehavior => (is => 'ro', isa => 'Str', required => 1);
  has QueryStrings => (is => 'ro', isa => 'Paws::CloudFront::QueryStringNames');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CachePolicyQueryStringsConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CachePolicyQueryStringsConfig object:

  $service_obj->Method(Att1 => { QueryStringBehavior => $value, ..., QueryStrings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CachePolicyQueryStringsConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->QueryStringBehavior

=head1 DESCRIPTION

An object that determines whether any URL query strings in viewer
requests (and if so, which query strings) are included in the cache key
and automatically included in requests that CloudFront sends to the
origin.

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryStringBehavior => Str

Determines whether any URL query strings in viewer requests are
included in the cache key and automatically included in requests that
CloudFront sends to the origin. Valid values are:

=over

=item *

C<none> E<ndash> Query strings in viewer requests are not included in
the cache key and are not automatically included in requests that
CloudFront sends to the origin. Even when this field is set to C<none>,
any query strings that are listed in an C<OriginRequestPolicy> I<are>
included in origin requests.

=item *

C<whitelist> E<ndash> The query strings in viewer requests that are
listed in the C<QueryStringNames> type are included in the cache key
and automatically included in requests that CloudFront sends to the
origin.

=item *

C<allExcept> E<ndash> All query strings in viewer requests that are I<
B<not> > listed in the C<QueryStringNames> type are included in the
cache key and automatically included in requests that CloudFront sends
to the origin.

=item *

C<all> E<ndash> All query strings in viewer requests are included in
the cache key and are automatically included in requests that
CloudFront sends to the origin.

=back



=head2 QueryStrings => L<Paws::CloudFront::QueryStringNames>

Contains the specific query strings in viewer requests that either I<
B<are> > or I< B<are not> > included in the cache key and automatically
included in requests that CloudFront sends to the origin. The behavior
depends on whether the C<QueryStringBehavior> field in the
C<CachePolicyQueryStringsConfig> type is set to C<whitelist> (the
listed query strings I< B<are> > included) or C<allExcept> (the listed
query strings I< B<are not> > included, but all other query strings
are).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

