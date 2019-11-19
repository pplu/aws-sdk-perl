
package Paws::Connect::UpdateUserPhoneConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw/Connect_UserPhoneConfig/;
  has InstanceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PhoneConfig => (is => 'ro', isa => Connect_UserPhoneConfig, required => 1, predicate => 1);
  has UserId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateUserPhoneConfig');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/users/{InstanceId}/{UserId}/phone-config');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'UserId' => 'UserId',
                    'InstanceId' => 'InstanceId'
                  },
  'IsRequired' => {
                    'InstanceId' => 1,
                    'UserId' => 1,
                    'PhoneConfig' => 1
                  },
  'types' => {
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'UserId' => {
                             'type' => 'Str'
                           },
               'PhoneConfig' => {
                                  'class' => 'Paws::Connect::UserPhoneConfig',
                                  'type' => 'Connect_UserPhoneConfig'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateUserPhoneConfig - Arguments for method UpdateUserPhoneConfig on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserPhoneConfig on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateUserPhoneConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserPhoneConfig.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateUserPhoneConfig(
      InstanceId  => 'MyInstanceId',
      PhoneConfig => {
        PhoneType => 'SOFT_PHONE',    # values: SOFT_PHONE, DESK_PHONE
        AfterContactWorkTimeLimit => 1,                  # OPTIONAL
        AutoAccept                => 1,                  # OPTIONAL
        DeskPhoneNumber           => 'MyPhoneNumber',    # OPTIONAL
      },
      UserId => 'MyUserId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateUserPhoneConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> PhoneConfig => Connect_UserPhoneConfig

Information about phone configuration settings for the user.



=head2 B<REQUIRED> UserId => Str

The identifier of the user account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserPhoneConfig in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

