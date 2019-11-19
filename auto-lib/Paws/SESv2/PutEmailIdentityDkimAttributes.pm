
package Paws::SESv2::PutEmailIdentityDkimAttributes;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::SESv2::Types qw//;
  has EmailIdentity => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SigningEnabled => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutEmailIdentityDkimAttributes');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/email/identities/{EmailIdentity}/dkim');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SESv2::PutEmailIdentityDkimAttributesResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'EmailIdentity' => 'EmailIdentity'
                  },
  'IsRequired' => {
                    'EmailIdentity' => 1
                  },
  'types' => {
               'EmailIdentity' => {
                                    'type' => 'Str'
                                  },
               'SigningEnabled' => {
                                     'type' => 'Bool'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutEmailIdentityDkimAttributes - Arguments for method PutEmailIdentityDkimAttributes on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEmailIdentityDkimAttributes on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutEmailIdentityDkimAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEmailIdentityDkimAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutEmailIdentityDkimAttributesResponse =
      $email->PutEmailIdentityDkimAttributes(
      EmailIdentity  => 'MyIdentity',
      SigningEnabled => 1,              # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutEmailIdentityDkimAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailIdentity => Str

The email identity that you want to change the DKIM settings for.



=head2 SigningEnabled => Bool

Sets the DKIM signing configuration for the identity.

When you set this value C<true>, then the messages that are sent from
the identity are signed using DKIM. If you set this value to C<false>,
your messages are sent without DKIM signing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEmailIdentityDkimAttributes in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

