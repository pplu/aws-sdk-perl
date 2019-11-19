
package Paws::Chime::BatchUpdateUser;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_UpdateUserRequestItem/;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UpdateUserRequestItems => (is => 'ro', isa => ArrayRef[Chime_UpdateUserRequestItem], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BatchUpdateUser');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{accountId}/users');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::BatchUpdateUserResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UpdateUserRequestItems' => {
                                             'class' => 'Paws::Chime::UpdateUserRequestItem',
                                             'type' => 'ArrayRef[Chime_UpdateUserRequestItem]'
                                           },
               'AccountId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'AccountId' => 1,
                    'UpdateUserRequestItems' => 1
                  },
  'ParamInURI' => {
                    'AccountId' => 'accountId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::BatchUpdateUser - Arguments for method BatchUpdateUser on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateUser on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method BatchUpdateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateUser.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $BatchUpdateUserResponse = $chime->BatchUpdateUser(
      AccountId              => 'MyNonEmptyString',
      UpdateUserRequestItems => [
        {
          UserId => 'MyNonEmptyString',
          LicenseType => 'Basic', # values: Basic, Plus, Pro, ProTrial; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $UserErrors = $BatchUpdateUserResponse->UserErrors;

    # Returns a L<Paws::Chime::BatchUpdateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/BatchUpdateUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> UpdateUserRequestItems => ArrayRef[Chime_UpdateUserRequestItem]

The request containing the user IDs and details to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateUser in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

