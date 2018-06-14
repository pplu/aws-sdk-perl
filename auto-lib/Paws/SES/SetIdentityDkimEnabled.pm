
package Paws::SES::SetIdentityDkimEnabled;
  use Moose;
  has DkimEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabled');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::SetIdentityDkimEnabledResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabledResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SetIdentityDkimEnabled - Arguments for method SetIdentityDkimEnabled on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetIdentityDkimEnabled on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method SetIdentityDkimEnabled.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetIdentityDkimEnabled.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # SetIdentityDkimEnabled
    # The following example configures Amazon SES to Easy DKIM-sign the email
    # sent from an identity:
    my $SetIdentityDkimEnabledResponse = $email->SetIdentityDkimEnabled(
      {
        'DkimEnabled' => 1,
        'Identity'    => 'user@example.com'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/SetIdentityDkimEnabled>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DkimEnabled => Bool

Sets whether DKIM signing is enabled for an identity. Set to C<true> to
enable DKIM signing for this identity; C<false> to disable it.



=head2 B<REQUIRED> Identity => Str

The identity for which DKIM signing should be enabled or disabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetIdentityDkimEnabled in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

