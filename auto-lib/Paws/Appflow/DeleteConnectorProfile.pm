
package Paws::Appflow::DeleteConnectorProfile;
  use Moose;
  has ConnectorProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorProfileName', required => 1);
  has ForceDelete => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'forceDelete');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnectorProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-connector-profile');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::DeleteConnectorProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DeleteConnectorProfile - Arguments for method DeleteConnectorProfile on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConnectorProfile on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method DeleteConnectorProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConnectorProfile.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $DeleteConnectorProfileResponse = $appflow->DeleteConnectorProfile(
      ConnectorProfileName => 'MyConnectorProfileName',
      ForceDelete          => 1,                          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/DeleteConnectorProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorProfileName => Str

The name of the connector profile. The name is unique for each
C<ConnectorProfile> in your account.



=head2 ForceDelete => Bool

Indicates whether Amazon AppFlow should delete the profile, even if it
is currently in use in one or more flows.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConnectorProfile in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

