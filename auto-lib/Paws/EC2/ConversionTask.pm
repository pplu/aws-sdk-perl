package Paws::EC2::ConversionTask;
  use Moose;
  has ConversionTaskId => (is => 'ro', isa => 'Str', request_name => 'conversionTaskId', traits => ['NameInRequest']);
  has ExpirationTime => (is => 'ro', isa => 'Str', request_name => 'expirationTime', traits => ['NameInRequest']);
  has ImportInstance => (is => 'ro', isa => 'Paws::EC2::ImportInstanceTaskDetails', request_name => 'importInstance', traits => ['NameInRequest']);
  has ImportVolume => (is => 'ro', isa => 'Paws::EC2::ImportVolumeTaskDetails', request_name => 'importVolume', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ConversionTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ConversionTask object:

  $service_obj->Method(Att1 => { ConversionTaskId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ConversionTask object:

  $result = $service_obj->Method(...);
  $result->Att1->ConversionTaskId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ConversionTaskId => Str

  The ID of the conversion task.


=head2 ExpirationTime => Str

  The time when the task expires. If the upload isn't complete before the
expiration time, we automatically cancel the task.


=head2 ImportInstance => L<Paws::EC2::ImportInstanceTaskDetails>

  If the task is for importing an instance, this contains information
about the import instance task.


=head2 ImportVolume => L<Paws::EC2::ImportVolumeTaskDetails>

  If the task is for importing a volume, this contains information about
the import volume task.


=head2 State => Str

  The state of the conversion task.


=head2 StatusMessage => Str

  The status message related to the conversion task.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
