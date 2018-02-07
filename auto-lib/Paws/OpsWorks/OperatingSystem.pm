package Paws::OpsWorks::OperatingSystem;
  use Moose;
  has ConfigurationManagers => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::OperatingSystemConfigurationManager]');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ReportedName => (is => 'ro', isa => 'Str');
  has ReportedVersion => (is => 'ro', isa => 'Str');
  has Supported => (is => 'ro', isa => 'Bool');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::OperatingSystem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::OperatingSystem object:

  $service_obj->Method(Att1 => { ConfigurationManagers => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::OperatingSystem object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationManagers

=head1 DESCRIPTION

Describes supported operating systems in AWS OpsWorks Stacks.

=head1 ATTRIBUTES


=head2 ConfigurationManagers => ArrayRef[L<Paws::OpsWorks::OperatingSystemConfigurationManager>]

  Supported configuration manager name and versions for an AWS OpsWorks
Stacks operating system.


=head2 Id => Str

  The ID of a supported operating system, such as C<Amazon Linux
2017.09>.


=head2 Name => Str

  The name of the operating system, such as C<Amazon Linux 2017.09>.


=head2 ReportedName => Str

  A short name for the operating system manufacturer.


=head2 ReportedVersion => Str

  The version of the operating system, including the release and edition,
if applicable.


=head2 Supported => Bool

  Indicates that an operating system is not supported for new instances.


=head2 Type => Str

  The type of a supported operating system, either C<Linux> or
C<Windows>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

