# Generated from default/object.tt
package Paws::MQ::ListUsersOutput;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::MQ::Types qw/MQ_UserSummary/;
  has BrokerId => (is => 'ro', isa => Str);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);
  has Users => (is => 'ro', isa => ArrayRef[MQ_UserSummary]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Users' => {
                            'class' => 'Paws::MQ::UserSummary',
                            'type' => 'ArrayRef[MQ_UserSummary]'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'BrokerId' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'Users' => 'users',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults',
                       'BrokerId' => 'brokerId'
                     }
}
;
    return $Params_map;
  }


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


=head2 Users => ArrayRef[MQ_UserSummary]

  Required. The list of all ActiveMQ usernames for the specified broker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

