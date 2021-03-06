# Generated by default/object.tt
package Paws::NimbleStudio::StreamConfigurationCreate;
  use Moose;
  has ClipboardMode => (is => 'ro', isa => 'Str', request_name => 'clipboardMode', traits => ['NameInRequest'], required => 1);
  has Ec2InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ec2InstanceTypes', traits => ['NameInRequest'], required => 1);
  has MaxSessionLengthInMinutes => (is => 'ro', isa => 'Int', request_name => 'maxSessionLengthInMinutes', traits => ['NameInRequest']);
  has StreamingImageIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'streamingImageIds', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::StreamConfigurationCreate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NimbleStudio::StreamConfigurationCreate object:

  $service_obj->Method(Att1 => { ClipboardMode => $value, ..., StreamingImageIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NimbleStudio::StreamConfigurationCreate object:

  $result = $service_obj->Method(...);
  $result->Att1->ClipboardMode

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClipboardMode => Str

Enable or disable the use of the system clipboard to copy and paste
between the streaming session and streaming client.


=head2 B<REQUIRED> Ec2InstanceTypes => ArrayRef[Str|Undef]

The EC2 instance types that users can select from when launching a
streaming session with this launch profile.


=head2 MaxSessionLengthInMinutes => Int

The length of time, in minutes, that a streaming session can run. After
this point, Nimble Studio automatically terminates the session.


=head2 B<REQUIRED> StreamingImageIds => ArrayRef[Str|Undef]

The streaming images that users can select from when launching a
streaming session with this launch profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

