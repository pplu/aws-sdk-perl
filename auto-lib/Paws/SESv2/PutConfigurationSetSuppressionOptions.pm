
package Paws::SESv2::PutConfigurationSetSuppressionOptions;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationSetName', required => 1);
  has SuppressedReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfigurationSetSuppressionOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/configuration-sets/{ConfigurationSetName}/suppression-options');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::PutConfigurationSetSuppressionOptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutConfigurationSetSuppressionOptions - Arguments for method PutConfigurationSetSuppressionOptions on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigurationSetSuppressionOptions on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutConfigurationSetSuppressionOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigurationSetSuppressionOptions.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutConfigurationSetSuppressionOptionsResponse =
      $email->PutConfigurationSetSuppressionOptions(
      ConfigurationSetName => 'MyConfigurationSetName',
      SuppressedReasons    => [
        'BOUNCE', ...    # values: BOUNCE, COMPLAINT
      ],                 # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutConfigurationSetSuppressionOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that you want to change the
suppression list preferences for.



=head2 SuppressedReasons => ArrayRef[Str|Undef]

A list that contains the reasons that email addresses are automatically
added to the suppression list for your account. This list can contain
any or all of the following:

=over

=item *

C<COMPLAINT> E<ndash> Amazon SES adds an email address to the
suppression list for your account when a message sent to that address
results in a complaint.

=item *

C<BOUNCE> E<ndash> Amazon SES adds an email address to the suppression
list for your account when a message sent to that address results in a
hard bounce.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfigurationSetSuppressionOptions in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

