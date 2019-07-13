package Paws::AppSync::ApiKey;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Expires => (is => 'ro', isa => 'Int', request_name => 'expires', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ApiKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::ApiKey object:

  $service_obj->Method(Att1 => { Description => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::ApiKey object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Describes an API key.

Customers invoke AWS AppSync GraphQL API operations with API keys as an
identity mechanism. There are two key versions:

B<da1>: This version was introduced at launch in November 2017. These
keys always expire after 7 days. Key expiration is managed by Amazon
DynamoDB TTL. The keys ceased to be valid after February 21, 2018 and
should not be used after that date.

=over

=item *

C<ListApiKeys> returns the expiration time in milliseconds.

=item *

C<CreateApiKey> returns the expiration time in milliseconds.

=item *

C<UpdateApiKey> is not available for this key version.

=item *

C<DeleteApiKey> deletes the item from the table.

=item *

Expiration is stored in Amazon DynamoDB as milliseconds. This results
in a bug where keys are not automatically deleted because DynamoDB
expects the TTL to be stored in seconds. As a one-time action, we will
delete these keys from the table after February 21, 2018.

=back

B<da2>: This version was introduced in February 2018 when AppSync added
support to extend key expiration.

=over

=item *

C<ListApiKeys> returns the expiration time in seconds.

=item *

C<CreateApiKey> returns the expiration time in seconds and accepts a
user-provided expiration time in seconds.

=item *

C<UpdateApiKey> returns the expiration time in seconds and accepts a
user-provided expiration time in seconds. Key expiration can only be
updated while the key has not expired.

=item *

C<DeleteApiKey> deletes the item from the table.

=item *

Expiration is stored in Amazon DynamoDB as seconds.

=back


=head1 ATTRIBUTES


=head2 Description => Str

  A description of the purpose of the API key.


=head2 Expires => Int

  The time after which the API key expires. The date is represented as
seconds since the epoch, rounded down to the nearest hour.


=head2 Id => Str

  The API key ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

