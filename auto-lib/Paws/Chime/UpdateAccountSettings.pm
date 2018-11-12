
package Paws::Chime::UpdateAccountSettings;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has AccountSettings => (is => 'ro', isa => 'Paws::Chime::AccountSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/console/accounts/{accountId}/settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::UpdateAccountSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateAccountSettings - Arguments for method UpdateAccountSettings on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountSettings on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method UpdateAccountSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountSettings.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $UpdateAccountSettingsResponse = $chime->UpdateAccountSettings(
      AccountId       => 'MyNonEmptyString',
      AccountSettings => {
        DisableRemoteControl => 1,    # OPTIONAL
        EnableDialOut        => 1,    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/UpdateAccountSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> AccountSettings => L<Paws::Chime::AccountSettings>

The Amazon Chime account settings to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountSettings in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

