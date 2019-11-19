
package Paws::Chime::AssociatePhoneNumberWithUser;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has E164PhoneNumber => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociatePhoneNumberWithUser');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{accountId}/users/{userId}?operation=associate-phone-number');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::AssociatePhoneNumberWithUserResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'UserId' => 'userId',
                    'AccountId' => 'accountId'
                  },
  'IsRequired' => {
                    'UserId' => 1,
                    'AccountId' => 1,
                    'E164PhoneNumber' => 1
                  },
  'types' => {
               'E164PhoneNumber' => {
                                      'type' => 'Str'
                                    },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'UserId' => {
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

Paws::Chime::AssociatePhoneNumberWithUser - Arguments for method AssociatePhoneNumberWithUser on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociatePhoneNumberWithUser on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method AssociatePhoneNumberWithUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociatePhoneNumberWithUser.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $AssociatePhoneNumberWithUserResponse =
      $chime->AssociatePhoneNumberWithUser(
      AccountId       => 'MyString',
      E164PhoneNumber => 'MyE164PhoneNumber',
      UserId          => 'MyString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/AssociatePhoneNumberWithUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> E164PhoneNumber => Str

The phone number, in E.164 format.



=head2 B<REQUIRED> UserId => Str

The user ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociatePhoneNumberWithUser in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

