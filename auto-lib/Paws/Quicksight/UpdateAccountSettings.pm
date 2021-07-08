
package Paws::Quicksight::UpdateAccountSettings;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DefaultNamespace => (is => 'ro', isa => 'Str', required => 1);
  has NotificationEmail => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateAccountSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateAccountSettings - Arguments for method UpdateAccountSettings on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountSettings on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateAccountSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountSettings.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateAccountSettingsResponse = $quicksight->UpdateAccountSettings(
      AwsAccountId      => 'MyAwsAccountId',
      DefaultNamespace  => 'MyNamespace',
      NotificationEmail => 'MyString',         # OPTIONAL
    );

    # Results:
    my $RequestId = $UpdateAccountSettingsResponse->RequestId;
    my $Status    = $UpdateAccountSettingsResponse->Status;

    # Returns a L<Paws::Quicksight::UpdateAccountSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateAccountSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that contains the QuickSight settings that
you want to list.



=head2 B<REQUIRED> DefaultNamespace => Str

The default namespace for this AWS account. Currently, the default is
C<default>. AWS Identity and Access Management (IAM) users that
register for the first time with QuickSight provide an email that
becomes associated with the default namespace.



=head2 NotificationEmail => Str

The email address that you want QuickSight to send notifications to
regarding your AWS account or QuickSight subscription.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountSettings in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

