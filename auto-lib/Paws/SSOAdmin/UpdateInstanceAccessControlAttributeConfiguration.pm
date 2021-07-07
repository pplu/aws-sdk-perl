
package Paws::SSOAdmin::UpdateInstanceAccessControlAttributeConfiguration;
  use Moose;
  has InstanceAccessControlAttributeConfiguration => (is => 'ro', isa => 'Paws::SSOAdmin::InstanceAccessControlAttributeConfiguration', required => 1);
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstanceAccessControlAttributeConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::UpdateInstanceAccessControlAttributeConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::UpdateInstanceAccessControlAttributeConfiguration - Arguments for method UpdateInstanceAccessControlAttributeConfiguration on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInstanceAccessControlAttributeConfiguration on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method UpdateInstanceAccessControlAttributeConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInstanceAccessControlAttributeConfiguration.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $UpdateInstanceAccessControlAttributeConfigurationResponse =
      $sso->UpdateInstanceAccessControlAttributeConfiguration(
      InstanceAccessControlAttributeConfiguration => {
        AccessControlAttributes => [
          {
            Key   => 'MyAccessControlAttributeKey',    # min: 1, max: 128
            Value => {
              Source => [
                'MyAccessControlAttributeValueSource', ...    # max: 256
              ],    # min: 1, max: 1

            },

          },
          ...
        ],    # max: 50

      },
      InstanceArn => 'MyInstanceArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/UpdateInstanceAccessControlAttributeConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceAccessControlAttributeConfiguration => L<Paws::SSOAdmin::InstanceAccessControlAttributeConfiguration>

Updates the attributes for your ABAC configuration.



=head2 B<REQUIRED> InstanceArn => Str

The ARN of the SSO instance under which the operation will be executed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInstanceAccessControlAttributeConfiguration in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

