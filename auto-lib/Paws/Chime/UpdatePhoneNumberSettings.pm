
package Paws::Chime::UpdatePhoneNumberSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has CallingName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdatePhoneNumberSettings');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/settings/phone-number');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CallingName' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'CallingName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdatePhoneNumberSettings - Arguments for method UpdatePhoneNumberSettings on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePhoneNumberSettings on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method UpdatePhoneNumberSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePhoneNumberSettings.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    $chime->UpdatePhoneNumberSettings(
      CallingName => 'MyCallingName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/UpdatePhoneNumberSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallingName => Str

The default outbound calling name for the account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePhoneNumberSettings in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

