package Paws::EC2::ConversionTask;
  use Moose;
  has ConversionTaskId => (is => 'ro', isa => 'Str', xmlname => 'conversionTaskId', traits => ['Unwrapped'], required => 1);
  has ExpirationTime => (is => 'ro', isa => 'Str', xmlname => 'expirationTime', traits => ['Unwrapped']);
  has ImportInstance => (is => 'ro', isa => 'Paws::EC2::ImportInstanceTaskDetails', xmlname => 'importInstance', traits => ['Unwrapped']);
  has ImportVolume => (is => 'ro', isa => 'Paws::EC2::ImportVolumeTaskDetails', xmlname => 'importVolume', traits => ['Unwrapped']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', traits => ['Unwrapped'], required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', xmlname => 'statusMessage', traits => ['Unwrapped']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', xmlname => 'tagSet', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ConversionTask

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 B<REQUIRED> ConversionTaskId => Str

  

The ID of the conversion task.










=head2 ExpirationTime => Str

  

The time when the task expires. If the upload isn't complete before the
expiration time, we automatically cancel the task.










=head2 ImportInstance => Paws::EC2::ImportInstanceTaskDetails

  

If the task is for importing an instance, this contains information
about the import instance task.










=head2 ImportVolume => Paws::EC2::ImportVolumeTaskDetails

  

If the task is for importing a volume, this contains information about
the import volume task.










=head2 B<REQUIRED> State => Str

  

The state of the conversion task.










=head2 StatusMessage => Str

  

The status message related to the conversion task.










=head2 Tags => ArrayRef[Paws::EC2::Tag]

  

Any tags assigned to the task.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
