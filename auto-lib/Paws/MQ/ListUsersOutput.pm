package Paws::MQ::ListUsersOutput;
  use Moose;
  has BrokerId => (is => 'ro', isa => 'Str', request_name => 'brokerId', traits => ['NameInRequest']);
  has MaxResults => (is => 'ro', isa => 'Int', request_name => 'maxResults', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest']);
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::MQ::UserSummary]', request_name => 'users', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListUsersOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::ListUsersOutput object:

  $service_obj->Method(Att1 => { BrokerId => $value, ..., Users => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::ListUsersOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->BrokerId

=head1 DESCRIPTION

Returns a list of all ActiveMQ users.

=head1 ATTRIBUTES


=head2 BrokerId => Str

  Required. The unique ID that Amazon MQ generates for the broker.


=head2 MaxResults => Int

  Required. The maximum number of ActiveMQ users that can be returned per
page (20 by default). This value must be an integer from 5 to 100.


=head2 NextToken => Str

  The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.


=head2 Users => ArrayRef[L<Paws::MQ::UserSummary>]

  Required. The list of all ActiveMQ usernames for the specified broker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

