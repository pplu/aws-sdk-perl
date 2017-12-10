package Paws::ElasticBeanstalk::ConfigurationOptionDescription;
  use Moose;
  has ChangeSeverity => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has MaxLength => (is => 'ro', isa => 'Int');
  has MaxValue => (is => 'ro', isa => 'Int');
  has MinValue => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has Regex => (is => 'ro', isa => 'Paws::ElasticBeanstalk::OptionRestrictionRegex');
  has UserDefined => (is => 'ro', isa => 'Bool');
  has ValueOptions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ValueType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ConfigurationOptionDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ConfigurationOptionDescription object:

  $service_obj->Method(Att1 => { ChangeSeverity => $value, ..., ValueType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ConfigurationOptionDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ChangeSeverity

=head1 DESCRIPTION

Describes the possible values for a configuration option.

=head1 ATTRIBUTES


=head2 ChangeSeverity => Str

  An indication of which action is required if the value for this
configuration option changes:

=over

=item *

C<NoInterruption> : There is no interruption to the environment or
application availability.

=item *

C<RestartEnvironment> : The environment is entirely restarted, all AWS
resources are deleted and recreated, and the environment is unavailable
during the process.

=item *

C<RestartApplicationServer> : The environment is available the entire
time. However, a short application outage occurs when the application
servers on the running Amazon EC2 instances are restarted.

=back



=head2 DefaultValue => Str

  The default value for this configuration option.


=head2 MaxLength => Int

  If specified, the configuration option must be a string value no longer
than this value.


=head2 MaxValue => Int

  If specified, the configuration option must be a numeric value less
than this value.


=head2 MinValue => Int

  If specified, the configuration option must be a numeric value greater
than this value.


=head2 Name => Str

  The name of the configuration option.


=head2 Namespace => Str

  A unique namespace identifying the option's associated AWS resource.


=head2 Regex => L<Paws::ElasticBeanstalk::OptionRestrictionRegex>

  If specified, the configuration option must be a string value that
satisfies this regular expression.


=head2 UserDefined => Bool

  An indication of whether the user defined this configuration option:

=over

=item *

C<true> : This configuration option was defined by the user. It is a
valid choice for specifying if this as an C<Option to Remove> when
updating configuration settings.

=item *

C<false> : This configuration was not defined by the user.

=back

Constraint: You can remove only C<UserDefined> options from a
configuration.

Valid Values: C<true> | C<false>


=head2 ValueOptions => ArrayRef[Str|Undef]

  If specified, values for the configuration option are selected from
this list.


=head2 ValueType => Str

  An indication of which type of values this option has and whether it is
allowable to select one or more than one of the possible values:

=over

=item *

C<Scalar> : Values for this option are a single selection from the
possible values, or an unformatted string, or numeric value governed by
the C<MIN/MAX/Regex> constraints.

=item *

C<List> : Values for this option are multiple selections from the
possible values.

=item *

C<Boolean> : Values for this option are either C<true> or C<false> .

=item *

C<Json> : Values for this option are a JSON representation of a
C<ConfigDocument>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

