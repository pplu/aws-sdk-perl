# Generated by default/object.tt
package Paws::ElasticBeanstalk::PlatformFilter;
  use Moose;
  has Operator => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::PlatformFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::PlatformFilter object:

  $service_obj->Method(Att1 => { Operator => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::PlatformFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Operator

=head1 DESCRIPTION

Describes criteria to restrict the results when listing platform
versions.

The filter is evaluated as follows: C<Type Operator Values[1]>

=head1 ATTRIBUTES


=head2 Operator => Str

The operator to apply to the C<Type> with each of the C<Values>.

Valid values: C<=> | C<!=> | C<E<lt>> | C<E<lt>=> | C<E<gt>> |
C<E<gt>=> | C<contains> | C<begins_with> | C<ends_with>


=head2 Type => Str

The platform version attribute to which the filter values are applied.

Valid values: C<PlatformName> | C<PlatformVersion> | C<PlatformStatus>
| C<PlatformBranchName> | C<PlatformLifecycleState> | C<PlatformOwner>
| C<SupportedTier> | C<SupportedAddon> | C<ProgrammingLanguageName> |
C<OperatingSystemName>


=head2 Values => ArrayRef[Str|Undef]

The list of values applied to the filtering platform version attribute.
Only one value is supported for all current operators.

The following list shows valid filter values for some filter
attributes.

=over

=item *

C<PlatformStatus>: C<Creating> | C<Failed> | C<Ready> | C<Deleting> |
C<Deleted>

=item *

C<PlatformLifecycleState>: C<recommended>

=item *

C<SupportedTier>: C<WebServer/Standard> | C<Worker/SQS/HTTP>

=item *

C<SupportedAddon>: C<Log/S3> | C<Monitoring/Healthd> |
C<WorkerDaemon/SQSD>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

