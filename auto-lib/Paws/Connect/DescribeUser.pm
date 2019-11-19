
package Paws::Connect::DescribeUser;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw//;
  has InstanceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeUser');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/users/{InstanceId}/{UserId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Connect::DescribeUserResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'UserId' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'UserId' => 1,
                    'InstanceId' => 1
                  },
  'ParamInURI' => {
                    'UserId' => 'UserId',
                    'InstanceId' => 'InstanceId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeUser - Arguments for method DescribeUser on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUser on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribeUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUser.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribeUserResponse = $connect->DescribeUser(
      InstanceId => 'MyInstanceId',
      UserId     => 'MyUserId',

    );

    # Results:
    my $User = $DescribeUserResponse->User;

    # Returns a L<Paws::Connect::DescribeUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribeUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> UserId => Str

The identifier of the user account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUser in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

