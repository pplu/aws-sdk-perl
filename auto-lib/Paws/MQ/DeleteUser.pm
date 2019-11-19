
package Paws::MQ::DeleteUser;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw//;
  has BrokerId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Username => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteUser');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/brokers/{broker-id}/users/{username}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MQ::DeleteUserResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'BrokerId' => 'broker-id',
                    'Username' => 'username'
                  },
  'IsRequired' => {
                    'Username' => 1,
                    'BrokerId' => 1
                  },
  'types' => {
               'BrokerId' => {
                               'type' => 'Str'
                             },
               'Username' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DeleteUser - Arguments for method DeleteUser on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUser on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method DeleteUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUser.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $DeleteUserResponse = $mq->DeleteUser(
      BrokerId => 'My__string',
      Username => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/DeleteUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrokerId => Str

The unique ID that Amazon MQ generates for the broker.



=head2 B<REQUIRED> Username => Str

The username of the ActiveMQ user. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 2-100 characters long.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUser in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

