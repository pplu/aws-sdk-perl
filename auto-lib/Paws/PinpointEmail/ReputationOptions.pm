package Paws::PinpointEmail::ReputationOptions;
  use Moose;
  has LastFreshStart => (is => 'ro', isa => 'Str');
  has ReputationMetricsEnabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::ReputationOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::ReputationOptions object:

  $service_obj->Method(Att1 => { LastFreshStart => $value, ..., ReputationMetricsEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::ReputationOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->LastFreshStart

=head1 DESCRIPTION

Enable or disable collection of reputation metrics for emails that you
send using this configuration set in the current AWS Region.

=head1 ATTRIBUTES


=head2 LastFreshStart => Str

  The date and time (in Unix time) when the reputation metrics were last
given a fresh start. When your account is given a fresh start, your
reputation metrics are calculated starting from the date of the fresh
start.


=head2 ReputationMetricsEnabled => Bool

  If C<true>, tracking of reputation metrics is enabled for the
configuration set. If C<false>, tracking of reputation metrics is
disabled for the configuration set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

