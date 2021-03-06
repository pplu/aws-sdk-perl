# Generated by default/object.tt
package Paws::NimbleStudio::CreateLaunchProfileInput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Ec2SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ec2SubnetIds', traits => ['NameInRequest'], required => 1);
  has LaunchProfileProtocolVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'launchProfileProtocolVersions', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has StreamConfiguration => (is => 'ro', isa => 'Paws::NimbleStudio::StreamConfigurationCreate', request_name => 'streamConfiguration', traits => ['NameInRequest'], required => 1);
  has StudioComponentIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'studioComponentIds', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NimbleStudio::Tags', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::CreateLaunchProfileInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NimbleStudio::CreateLaunchProfileInput object:

  $service_obj->Method(Att1 => { Description => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NimbleStudio::CreateLaunchProfileInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

The description.


=head2 B<REQUIRED> Ec2SubnetIds => ArrayRef[Str|Undef]




=head2 B<REQUIRED> LaunchProfileProtocolVersions => ArrayRef[Str|Undef]

The version number of the protocol that is used by the launch profile.
The only valid version is "2021-03-31".


=head2 B<REQUIRED> Name => Str

The name for the launch profile.


=head2 B<REQUIRED> StreamConfiguration => L<Paws::NimbleStudio::StreamConfigurationCreate>

A configuration for a streaming session.


=head2 B<REQUIRED> StudioComponentIds => ArrayRef[Str|Undef]

Unique identifiers for a collection of studio components that can be
used with this launch profile.


=head2 Tags => L<Paws::NimbleStudio::Tags>

A collection of labels, in the form of key:value pairs, that apply to
this resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

