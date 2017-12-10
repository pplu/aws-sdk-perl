package Paws::SES::ReputationOptions;
  use Moose;
  has LastFreshStart => (is => 'ro', isa => 'Str');
  has ReputationMetricsEnabled => (is => 'ro', isa => 'Bool');
  has SendingEnabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ReputationOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::ReputationOptions object:

  $service_obj->Method(Att1 => { LastFreshStart => $value, ..., SendingEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::ReputationOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->LastFreshStart

=head1 DESCRIPTION

Contains information about the reputation settings for a configuration
set.

=head1 ATTRIBUTES


=head2 LastFreshStart => Str

  The date and time at which the reputation metrics for the configuration
set were last reset. Resetting these metrics is known as a I<fresh
start>.

When you disable email sending for a configuration set using
UpdateConfigurationSetSendingEnabled and later re-enable it, the
reputation metrics for the configuration set (but not for the entire
Amazon SES account) are reset.

If email sending for the configuration set has never been disabled and
later re-enabled, the value of this attribute is C<null>.


=head2 ReputationMetricsEnabled => Bool

  Describes whether or not Amazon SES publishes reputation metrics for
the configuration set, such as bounce and complaint rates, to Amazon
CloudWatch.

If the value is C<true>, reputation metrics are published. If the value
is C<false>, reputation metrics are not published. The default value is
C<false>.


=head2 SendingEnabled => Bool

  Describes whether email sending is enabled or disabled for the
configuration set. If the value is C<true>, then Amazon SES will send
emails that use the configuration set. If the value is C<false>, Amazon
SES will not send emails that use the configuration set. The default
value is C<true>. You can change this setting using
UpdateConfigurationSetSendingEnabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

