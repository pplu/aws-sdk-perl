package Paws::ElasticBeanstalk::EnvironmentTier;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::EnvironmentTier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::EnvironmentTier object:

  $service_obj->Method(Att1 => { Name => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::EnvironmentTier object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes the properties of an environment tier

=head1 ATTRIBUTES


=head2 Name => Str

  The name of this environment tier.

Valid values:

=over

=item *

For I<Web server tier> E<ndash> C<WebServer>

=item *

For I<Worker tier> E<ndash> C<Worker>

=back



=head2 Type => Str

  The type of this environment tier.

Valid values:

=over

=item *

For I<Web server tier> E<ndash> C<Standard>

=item *

For I<Worker tier> E<ndash> C<SQS/HTTP>

=back



=head2 Version => Str

  The version of this environment tier. When you don't set a value to it,
Elastic Beanstalk uses the latest compatible worker tier version.

This member is deprecated. Any specific version that you set may become
out of date. We recommend leaving it unspecified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

