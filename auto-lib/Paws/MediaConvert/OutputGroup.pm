package Paws::MediaConvert::OutputGroup;
  use Moose;
  has CustomName => (is => 'ro', isa => 'Str', request_name => 'customName', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has OutputGroupSettings => (is => 'ro', isa => 'Paws::MediaConvert::OutputGroupSettings', request_name => 'outputGroupSettings', traits => ['NameInRequest']);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::Output]', request_name => 'outputs', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::OutputGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::OutputGroup object:

  $service_obj->Method(Att1 => { CustomName => $value, ..., Outputs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::OutputGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomName

=head1 DESCRIPTION

Group of outputs

=head1 ATTRIBUTES


=head2 CustomName => Str

  Use Custom Group Name (CustomName) to specify a name for the output
group. This value is displayed on the console and can make your job
settings JSON more human-readable. It does not affect your outputs. Use
up to twelve characters that are either letters, numbers, spaces, or
underscores.


=head2 Name => Str

  Name of the output group


=head2 OutputGroupSettings => L<Paws::MediaConvert::OutputGroupSettings>

  


=head2 Outputs => ArrayRef[L<Paws::MediaConvert::Output>]

  This object holds groups of encoding settings, one group of settings
per output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

